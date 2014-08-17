.class Lcom/android/internal/policy/impl/SmartFaceManager$2;
.super Landroid/os/Handler;
.source "SmartFaceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/SmartFaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/SmartFaceManager;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/SmartFaceManager;)V
    .locals 0
    .parameter

    .prologue
    .line 137
    iput-object p1, p0, Lcom/android/internal/policy/impl/SmartFaceManager$2;->this$0:Lcom/android/internal/policy/impl/SmartFaceManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 140
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 151
    :goto_0
    return-void

    .line 142
    :sswitch_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/SmartFaceManager$2;->this$0:Lcom/android/internal/policy/impl/SmartFaceManager;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/android/internal/policy/impl/SmartFaceManager;->handlePhoneStateChanged(Ljava/lang/String;)V

    goto :goto_0

    .line 145
    :sswitch_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/SmartFaceManager$2;->this$0:Lcom/android/internal/policy/impl/SmartFaceManager;

    #calls: Lcom/android/internal/policy/impl/SmartFaceManager;->handleSmartFaceViewStateChanged()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/SmartFaceManager;->access$300(Lcom/android/internal/policy/impl/SmartFaceManager;)V

    goto :goto_0

    .line 148
    :sswitch_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/SmartFaceManager$2;->this$0:Lcom/android/internal/policy/impl/SmartFaceManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/SmartFaceManager;->turnOffScreen()V

    goto :goto_0

    .line 140
    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0xb -> :sswitch_2
        0x14 -> :sswitch_1
    .end sparse-switch
.end method
