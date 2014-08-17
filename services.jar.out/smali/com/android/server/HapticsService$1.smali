.class Lcom/android/server/HapticsService$1;
.super Landroid/os/UEventObserver;
.source "HapticsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/HapticsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/HapticsService;


# direct methods
.method constructor <init>(Lcom/android/server/HapticsService;)V
    .locals 0
    .parameter

    .prologue
    .line 116
    iput-object p1, p0, Lcom/android/server/HapticsService$1;->this$0:Lcom/android/server/HapticsService;

    invoke-direct {p0}, Landroid/os/UEventObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onUEvent(Landroid/os/UEventObserver$UEvent;)V
    .locals 3
    .parameter "event"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/server/HapticsService$1;->this$0:Lcom/android/server/HapticsService;

    const-string v1, "SWITCH_STATE"

    invoke-virtual {p1, v1}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    #setter for: Lcom/android/server/HapticsService;->mHapticsStatus:I
    invoke-static {v0, v1}, Lcom/android/server/HapticsService;->access$002(Lcom/android/server/HapticsService;I)I

    .line 121
    iget-object v0, p0, Lcom/android/server/HapticsService$1;->this$0:Lcom/android/server/HapticsService;

    #getter for: Lcom/android/server/HapticsService;->mHapticsStatus:I
    invoke-static {v0}, Lcom/android/server/HapticsService;->access$000(Lcom/android/server/HapticsService;)I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/HapticsService$1;->this$0:Lcom/android/server/HapticsService;

    #getter for: Lcom/android/server/HapticsService;->mHapticsStatusPrev:I
    invoke-static {v0}, Lcom/android/server/HapticsService;->access$100(Lcom/android/server/HapticsService;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 123
    iget-object v0, p0, Lcom/android/server/HapticsService$1;->this$0:Lcom/android/server/HapticsService;

    #getter for: Lcom/android/server/HapticsService;->mHapticsMode:I
    invoke-static {v0}, Lcom/android/server/HapticsService;->access$200(Lcom/android/server/HapticsService;)I

    move-result v0

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_1

    .line 125
    iget-object v0, p0, Lcom/android/server/HapticsService$1;->this$0:Lcom/android/server/HapticsService;

    #getter for: Lcom/android/server/HapticsService;->mSeq:[B
    invoke-static {v0}, Lcom/android/server/HapticsService;->access$300(Lcom/android/server/HapticsService;)[B

    move-result-object v0

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/ti/Haptic;->playEffectSequence([BI)V

    .line 137
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/server/HapticsService$1;->this$0:Lcom/android/server/HapticsService;

    iget-object v1, p0, Lcom/android/server/HapticsService$1;->this$0:Lcom/android/server/HapticsService;

    #getter for: Lcom/android/server/HapticsService;->mHapticsStatus:I
    invoke-static {v1}, Lcom/android/server/HapticsService;->access$000(Lcom/android/server/HapticsService;)I

    move-result v1

    #setter for: Lcom/android/server/HapticsService;->mHapticsStatusPrev:I
    invoke-static {v0, v1}, Lcom/android/server/HapticsService;->access$102(Lcom/android/server/HapticsService;I)I

    .line 138
    return-void

    .line 127
    :cond_1
    iget-object v0, p0, Lcom/android/server/HapticsService$1;->this$0:Lcom/android/server/HapticsService;

    #getter for: Lcom/android/server/HapticsService;->mHapticsMode:I
    invoke-static {v0}, Lcom/android/server/HapticsService;->access$200(Lcom/android/server/HapticsService;)I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/android/server/HapticsService$1;->this$0:Lcom/android/server/HapticsService;

    const/4 v1, -0x3

    invoke-static {v0, v1}, Lcom/android/server/HapticsService;->access$272(Lcom/android/server/HapticsService;I)I

    goto :goto_0

    .line 134
    :cond_2
    const-string v0, "HapticsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "haptics state :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/HapticsService$1;->this$0:Lcom/android/server/HapticsService;

    #getter for: Lcom/android/server/HapticsService;->mHapticsStatus:I
    invoke-static {v2}, Lcom/android/server/HapticsService;->access$000(Lcom/android/server/HapticsService;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
