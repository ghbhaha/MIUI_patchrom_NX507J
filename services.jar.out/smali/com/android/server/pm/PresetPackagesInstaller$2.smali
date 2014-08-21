.class Lcom/android/server/pm/PresetPackagesInstaller$2;
.super Ljava/lang/Object;
.source "PresetPackagesInstaller.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PresetPackagesInstaller;->hideInstallingMessages()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PresetPackagesInstaller;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PresetPackagesInstaller;)V
    .locals 0
    .parameter

    .prologue
    .line 148
    iput-object p1, p0, Lcom/android/server/pm/PresetPackagesInstaller$2;->this$0:Lcom/android/server/pm/PresetPackagesInstaller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 152
    iget-object v0, p0, Lcom/android/server/pm/PresetPackagesInstaller$2;->this$0:Lcom/android/server/pm/PresetPackagesInstaller;

    iget-object v0, v0, Lcom/android/server/pm/PresetPackagesInstaller;->mInstallerMsgDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/android/server/pm/PresetPackagesInstaller$2;->this$0:Lcom/android/server/pm/PresetPackagesInstaller;

    iget-object v0, v0, Lcom/android/server/pm/PresetPackagesInstaller;->mInstallerMsgDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 154
    iget-object v0, p0, Lcom/android/server/pm/PresetPackagesInstaller$2;->this$0:Lcom/android/server/pm/PresetPackagesInstaller;

    iget-object v0, v0, Lcom/android/server/pm/PresetPackagesInstaller;->mInstallerMsgDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 155
    iget-object v0, p0, Lcom/android/server/pm/PresetPackagesInstaller$2;->this$0:Lcom/android/server/pm/PresetPackagesInstaller;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/server/pm/PresetPackagesInstaller;->mInstallerMsgDialog:Landroid/app/ProgressDialog;

    .line 157
    :cond_0
    return-void
.end method
