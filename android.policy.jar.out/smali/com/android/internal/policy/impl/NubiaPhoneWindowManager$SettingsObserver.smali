.class Lcom/android/internal/policy/impl/NubiaPhoneWindowManager$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "NubiaPhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/NubiaPhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingsObserver"
.end annotation


# instance fields
.field mListener:Lcom/android/internal/policy/impl/ISettingListener;

.field final synthetic this$0:Lcom/android/internal/policy/impl/NubiaPhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/NubiaPhoneWindowManager;Landroid/os/Handler;Lcom/android/internal/policy/impl/ISettingListener;)V
    .locals 0
    .parameter
    .parameter "handler"
    .parameter "listener"

    .prologue
    .line 54
    iput-object p1, p0, Lcom/android/internal/policy/impl/NubiaPhoneWindowManager$SettingsObserver;->this$0:Lcom/android/internal/policy/impl/NubiaPhoneWindowManager;

    .line 55
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 56
    iput-object p3, p0, Lcom/android/internal/policy/impl/NubiaPhoneWindowManager$SettingsObserver;->mListener:Lcom/android/internal/policy/impl/ISettingListener;

    .line 57
    return-void
.end method


# virtual methods
.method observe()V
    .locals 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/internal/policy/impl/NubiaPhoneWindowManager$SettingsObserver;->mListener:Lcom/android/internal/policy/impl/ISettingListener;

    iget-object v1, p0, Lcom/android/internal/policy/impl/NubiaPhoneWindowManager$SettingsObserver;->this$0:Lcom/android/internal/policy/impl/NubiaPhoneWindowManager;

    #getter for: Lcom/android/internal/policy/impl/NubiaPhoneWindowManager;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/internal/policy/impl/NubiaPhoneWindowManager;->access$000(Lcom/android/internal/policy/impl/NubiaPhoneWindowManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Lcom/android/internal/policy/impl/ISettingListener;->registerSettingsObserver(Landroid/content/ContentResolver;Landroid/database/ContentObserver;)V

    .line 61
    return-void
.end method

.method public onChange(Z)V
    .locals 1
    .parameter "selfChange"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/internal/policy/impl/NubiaPhoneWindowManager$SettingsObserver;->mListener:Lcom/android/internal/policy/impl/ISettingListener;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/ISettingListener;->updateSettings()V

    .line 66
    return-void
.end method
