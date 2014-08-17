.class Lcom/android/internal/policy/impl/SmartFaceManager$EnableSettingsObserver;
.super Landroid/database/ContentObserver;
.source "SmartFaceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/SmartFaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EnableSettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/SmartFaceManager;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/SmartFaceManager;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "handler"

    .prologue
    .line 965
    iput-object p1, p0, Lcom/android/internal/policy/impl/SmartFaceManager$EnableSettingsObserver;->this$0:Lcom/android/internal/policy/impl/SmartFaceManager;

    .line 966
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 967
    return-void
.end method


# virtual methods
.method observe()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 971
    iget-object v1, p0, Lcom/android/internal/policy/impl/SmartFaceManager$EnableSettingsObserver;->this$0:Lcom/android/internal/policy/impl/SmartFaceManager;

    #getter for: Lcom/android/internal/policy/impl/SmartFaceManager;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/internal/policy/impl/SmartFaceManager;->access$1900(Lcom/android/internal/policy/impl/SmartFaceManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 972
    .local v0, resolver:Landroid/content/ContentResolver;
    const-string v1, "smart_face_function_enable"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 975
    const-string v1, "smart_face_window"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 978
    return-void
.end method

.method public onChange(Z)V
    .locals 5
    .parameter "selfChange"

    .prologue
    const/4 v1, 0x1

    .line 982
    iget-object v2, p0, Lcom/android/internal/policy/impl/SmartFaceManager$EnableSettingsObserver;->this$0:Lcom/android/internal/policy/impl/SmartFaceManager;

    #calls: Lcom/android/internal/policy/impl/SmartFaceManager;->isSmartFaceFunEnable()Z
    invoke-static {v2}, Lcom/android/internal/policy/impl/SmartFaceManager;->access$2000(Lcom/android/internal/policy/impl/SmartFaceManager;)Z

    move-result v0

    .line 983
    .local v0, enableFunction:Z
    iget-object v2, p0, Lcom/android/internal/policy/impl/SmartFaceManager$EnableSettingsObserver;->this$0:Lcom/android/internal/policy/impl/SmartFaceManager;

    #getter for: Lcom/android/internal/policy/impl/SmartFaceManager;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/internal/policy/impl/SmartFaceManager;->access$1900(Lcom/android/internal/policy/impl/SmartFaceManager;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "smart_face_window"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_3

    .line 986
    .local v1, enableWindow:Z
    :goto_0
    const-string v2, "SmartFaceManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EnableSettingsObserver onChange enableFunction ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 988
    iget-object v2, p0, Lcom/android/internal/policy/impl/SmartFaceManager$EnableSettingsObserver;->this$0:Lcom/android/internal/policy/impl/SmartFaceManager;

    #getter for: Lcom/android/internal/policy/impl/SmartFaceManager;->mIsToggleOpen:Z
    invoke-static {v2}, Lcom/android/internal/policy/impl/SmartFaceManager;->access$000(Lcom/android/internal/policy/impl/SmartFaceManager;)Z

    move-result v2

    if-eq v2, v0, :cond_0

    .line 989
    iget-object v2, p0, Lcom/android/internal/policy/impl/SmartFaceManager$EnableSettingsObserver;->this$0:Lcom/android/internal/policy/impl/SmartFaceManager;

    #setter for: Lcom/android/internal/policy/impl/SmartFaceManager;->mIsToggleOpen:Z
    invoke-static {v2, v0}, Lcom/android/internal/policy/impl/SmartFaceManager;->access$002(Lcom/android/internal/policy/impl/SmartFaceManager;Z)Z

    .line 990
    if-nez v0, :cond_4

    .line 991
    iget-object v2, p0, Lcom/android/internal/policy/impl/SmartFaceManager$EnableSettingsObserver;->this$0:Lcom/android/internal/policy/impl/SmartFaceManager;

    #calls: Lcom/android/internal/policy/impl/SmartFaceManager;->onStop()V
    invoke-static {v2}, Lcom/android/internal/policy/impl/SmartFaceManager;->access$2100(Lcom/android/internal/policy/impl/SmartFaceManager;)V

    .line 997
    :cond_0
    :goto_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/SmartFaceManager$EnableSettingsObserver;->this$0:Lcom/android/internal/policy/impl/SmartFaceManager;

    #getter for: Lcom/android/internal/policy/impl/SmartFaceManager;->mIsEnableWindow:Z
    invoke-static {v2}, Lcom/android/internal/policy/impl/SmartFaceManager;->access$400(Lcom/android/internal/policy/impl/SmartFaceManager;)Z

    move-result v2

    if-eq v2, v1, :cond_2

    .line 998
    iget-object v2, p0, Lcom/android/internal/policy/impl/SmartFaceManager$EnableSettingsObserver;->this$0:Lcom/android/internal/policy/impl/SmartFaceManager;

    #setter for: Lcom/android/internal/policy/impl/SmartFaceManager;->mIsEnableWindow:Z
    invoke-static {v2, v1}, Lcom/android/internal/policy/impl/SmartFaceManager;->access$402(Lcom/android/internal/policy/impl/SmartFaceManager;Z)Z

    .line 999
    if-eqz v0, :cond_1

    if-nez v1, :cond_2

    .line 1000
    :cond_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/SmartFaceManager$EnableSettingsObserver;->this$0:Lcom/android/internal/policy/impl/SmartFaceManager;

    #calls: Lcom/android/internal/policy/impl/SmartFaceManager;->dismissSmartFaceMain()V
    invoke-static {v2}, Lcom/android/internal/policy/impl/SmartFaceManager;->access$2300(Lcom/android/internal/policy/impl/SmartFaceManager;)V

    .line 1003
    :cond_2
    return-void

    .line 983
    .end local v1           #enableWindow:Z
    :cond_3
    const/4 v1, 0x0

    goto :goto_0

    .line 993
    .restart local v1       #enableWindow:Z
    :cond_4
    iget-object v2, p0, Lcom/android/internal/policy/impl/SmartFaceManager$EnableSettingsObserver;->this$0:Lcom/android/internal/policy/impl/SmartFaceManager;

    #calls: Lcom/android/internal/policy/impl/SmartFaceManager;->onResume()V
    invoke-static {v2}, Lcom/android/internal/policy/impl/SmartFaceManager;->access$2200(Lcom/android/internal/policy/impl/SmartFaceManager;)V

    goto :goto_1
.end method
