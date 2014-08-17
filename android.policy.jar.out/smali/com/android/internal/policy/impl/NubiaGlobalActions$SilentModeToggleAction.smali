.class Lcom/android/internal/policy/impl/NubiaGlobalActions$SilentModeToggleAction;
.super Lcom/android/internal/policy/impl/NubiaGlobalActions$ToggleAction;
.source "NubiaGlobalActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/NubiaGlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SilentModeToggleAction"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/NubiaGlobalActions;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/NubiaGlobalActions;)V
    .locals 6
    .parameter

    .prologue
    .line 1048
    iput-object p1, p0, Lcom/android/internal/policy/impl/NubiaGlobalActions$SilentModeToggleAction;->this$0:Lcom/android/internal/policy/impl/NubiaGlobalActions;

    .line 1049
    const v1, 0x10802ec

    const v2, 0x10802ea

    const v3, 0x10400cd

    const v4, 0x10400ce

    const v5, 0x10400cf

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/impl/NubiaGlobalActions$ToggleAction;-><init>(IIIII)V

    .line 1053
    return-void
.end method


# virtual methods
.method onToggle(Z)V
    .locals 2
    .parameter "on"

    .prologue
    .line 1056
    if-eqz p1, :cond_0

    .line 1057
    iget-object v0, p0, Lcom/android/internal/policy/impl/NubiaGlobalActions$SilentModeToggleAction;->this$0:Lcom/android/internal/policy/impl/NubiaGlobalActions;

    #getter for: Lcom/android/internal/policy/impl/NubiaGlobalActions;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/android/internal/policy/impl/NubiaGlobalActions;->access$200(Lcom/android/internal/policy/impl/NubiaGlobalActions;)Landroid/media/AudioManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 1061
    :goto_0
    return-void

    .line 1059
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/NubiaGlobalActions$SilentModeToggleAction;->this$0:Lcom/android/internal/policy/impl/NubiaGlobalActions;

    #getter for: Lcom/android/internal/policy/impl/NubiaGlobalActions;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/android/internal/policy/impl/NubiaGlobalActions;->access$200(Lcom/android/internal/policy/impl/NubiaGlobalActions;)Landroid/media/AudioManager;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto :goto_0
.end method

.method public showBeforeProvisioning()Z
    .locals 1

    .prologue
    .line 1068
    const/4 v0, 0x0

    return v0
.end method

.method public showDuringKeyguard()Z
    .locals 1

    .prologue
    .line 1064
    const/4 v0, 0x1

    return v0
.end method
