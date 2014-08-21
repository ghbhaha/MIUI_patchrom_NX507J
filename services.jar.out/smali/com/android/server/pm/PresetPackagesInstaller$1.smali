.class Lcom/android/server/pm/PresetPackagesInstaller$1;
.super Ljava/lang/Object;
.source "PresetPackagesInstaller.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PresetPackagesInstaller;->showInstallingMessage(Ljava/lang/CharSequence;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PresetPackagesInstaller;

.field final synthetic val$msg:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PresetPackagesInstaller;Ljava/lang/CharSequence;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 85
    iput-object p1, p0, Lcom/android/server/pm/PresetPackagesInstaller$1;->this$0:Lcom/android/server/pm/PresetPackagesInstaller;

    iput-object p2, p0, Lcom/android/server/pm/PresetPackagesInstaller$1;->val$msg:Ljava/lang/CharSequence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 88
    iget-object v1, p0, Lcom/android/server/pm/PresetPackagesInstaller$1;->this$0:Lcom/android/server/pm/PresetPackagesInstaller;

    iget-object v1, v1, Lcom/android/server/pm/PresetPackagesInstaller;->mInstallerMsgDialog:Landroid/app/ProgressDialog;

    if-nez v1, :cond_0

    .line 89
    iget-object v1, p0, Lcom/android/server/pm/PresetPackagesInstaller$1;->this$0:Lcom/android/server/pm/PresetPackagesInstaller;

    new-instance v2, Lcom/android/server/pm/PresetPackagesInstaller$1$1;

    iget-object v3, p0, Lcom/android/server/pm/PresetPackagesInstaller$1;->this$0:Lcom/android/server/pm/PresetPackagesInstaller;

    #getter for: Lcom/android/server/pm/PresetPackagesInstaller;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/pm/PresetPackagesInstaller;->access$100(Lcom/android/server/pm/PresetPackagesInstaller;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/android/server/pm/PresetPackagesInstaller$1$1;-><init>(Lcom/android/server/pm/PresetPackagesInstaller$1;Landroid/content/Context;)V

    iput-object v2, v1, Lcom/android/server/pm/PresetPackagesInstaller;->mInstallerMsgDialog:Landroid/app/ProgressDialog;

    .line 124
    iget-object v1, p0, Lcom/android/server/pm/PresetPackagesInstaller$1;->this$0:Lcom/android/server/pm/PresetPackagesInstaller;

    iget-object v1, v1, Lcom/android/server/pm/PresetPackagesInstaller;->mInstallerMsgDialog:Landroid/app/ProgressDialog;

    const v2, 0x1040416

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setTitle(I)V

    .line 126
    iget-object v1, p0, Lcom/android/server/pm/PresetPackagesInstaller$1;->this$0:Lcom/android/server/pm/PresetPackagesInstaller;

    iget-object v1, v1, Lcom/android/server/pm/PresetPackagesInstaller;->mInstallerMsgDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v4}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 127
    iget-object v1, p0, Lcom/android/server/pm/PresetPackagesInstaller$1;->this$0:Lcom/android/server/pm/PresetPackagesInstaller;

    iget-object v1, v1, Lcom/android/server/pm/PresetPackagesInstaller;->mInstallerMsgDialog:Landroid/app/ProgressDialog;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 128
    iget-object v1, p0, Lcom/android/server/pm/PresetPackagesInstaller$1;->this$0:Lcom/android/server/pm/PresetPackagesInstaller;

    iget-object v1, v1, Lcom/android/server/pm/PresetPackagesInstaller;->mInstallerMsgDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7e5

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 130
    iget-object v1, p0, Lcom/android/server/pm/PresetPackagesInstaller$1;->this$0:Lcom/android/server/pm/PresetPackagesInstaller;

    iget-object v1, v1, Lcom/android/server/pm/PresetPackagesInstaller;->mInstallerMsgDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x102

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 133
    iget-object v1, p0, Lcom/android/server/pm/PresetPackagesInstaller$1;->this$0:Lcom/android/server/pm/PresetPackagesInstaller;

    iget-object v1, v1, Lcom/android/server/pm/PresetPackagesInstaller;->mInstallerMsgDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/high16 v2, 0x3f80

    invoke-virtual {v1, v2}, Landroid/view/Window;->setDimAmount(F)V

    .line 134
    iget-object v1, p0, Lcom/android/server/pm/PresetPackagesInstaller$1;->this$0:Lcom/android/server/pm/PresetPackagesInstaller;

    iget-object v1, v1, Lcom/android/server/pm/PresetPackagesInstaller;->mInstallerMsgDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 135
    iget-object v1, p0, Lcom/android/server/pm/PresetPackagesInstaller$1;->this$0:Lcom/android/server/pm/PresetPackagesInstaller;

    iget-object v1, v1, Lcom/android/server/pm/PresetPackagesInstaller;->mInstallerMsgDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 136
    .local v0, lp:Landroid/view/WindowManager$LayoutParams;
    const/4 v1, 0x5

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 137
    iget-object v1, p0, Lcom/android/server/pm/PresetPackagesInstaller$1;->this$0:Lcom/android/server/pm/PresetPackagesInstaller;

    iget-object v1, v1, Lcom/android/server/pm/PresetPackagesInstaller;->mInstallerMsgDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 138
    iget-object v1, p0, Lcom/android/server/pm/PresetPackagesInstaller$1;->this$0:Lcom/android/server/pm/PresetPackagesInstaller;

    iget-object v1, v1, Lcom/android/server/pm/PresetPackagesInstaller;->mInstallerMsgDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 139
    iget-object v1, p0, Lcom/android/server/pm/PresetPackagesInstaller$1;->this$0:Lcom/android/server/pm/PresetPackagesInstaller;

    iget-object v1, v1, Lcom/android/server/pm/PresetPackagesInstaller;->mInstallerMsgDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 141
    .end local v0           #lp:Landroid/view/WindowManager$LayoutParams;
    :cond_0
    iget-object v1, p0, Lcom/android/server/pm/PresetPackagesInstaller$1;->this$0:Lcom/android/server/pm/PresetPackagesInstaller;

    iget-object v1, v1, Lcom/android/server/pm/PresetPackagesInstaller;->mInstallerMsgDialog:Landroid/app/ProgressDialog;

    iget-object v2, p0, Lcom/android/server/pm/PresetPackagesInstaller$1;->val$msg:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 142
    return-void
.end method
