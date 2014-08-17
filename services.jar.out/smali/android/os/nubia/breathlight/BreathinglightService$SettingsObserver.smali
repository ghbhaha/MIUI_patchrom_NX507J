.class Landroid/os/nubia/breathlight/BreathinglightService$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "BreathinglightService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/nubia/breathlight/BreathinglightService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/os/nubia/breathlight/BreathinglightService;


# direct methods
.method constructor <init>(Landroid/os/nubia/breathlight/BreathinglightService;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "handler"

    .prologue
    .line 116
    iput-object p1, p0, Landroid/os/nubia/breathlight/BreathinglightService$SettingsObserver;->this$0:Landroid/os/nubia/breathlight/BreathinglightService;

    .line 117
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 118
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .parameter "selfChange"

    .prologue
    .line 136
    iget-object v0, p0, Landroid/os/nubia/breathlight/BreathinglightService$SettingsObserver;->this$0:Landroid/os/nubia/breathlight/BreathinglightService;

    #calls: Landroid/os/nubia/breathlight/BreathinglightService;->updateSwitchStatus()V
    invoke-static {v0}, Landroid/os/nubia/breathlight/BreathinglightService;->access$100(Landroid/os/nubia/breathlight/BreathinglightService;)V

    .line 137
    return-void
.end method

.method registerObserver()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 122
    iget-object v1, p0, Landroid/os/nubia/breathlight/BreathinglightService$SettingsObserver;->this$0:Landroid/os/nubia/breathlight/BreathinglightService;

    #getter for: Landroid/os/nubia/breathlight/BreathinglightService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/os/nubia/breathlight/BreathinglightService;->access$000(Landroid/os/nubia/breathlight/BreathinglightService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 123
    .local v0, resolver:Landroid/content/ContentResolver;
    const-string v1, "led_light_event_miss"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 125
    const-string v1, "led_light_app_msg"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 127
    const-string v1, "led_light_charge"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 129
    const-string v1, "led_light_battery_low"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 131
    iget-object v1, p0, Landroid/os/nubia/breathlight/BreathinglightService$SettingsObserver;->this$0:Landroid/os/nubia/breathlight/BreathinglightService;

    #calls: Landroid/os/nubia/breathlight/BreathinglightService;->updateSwitchStatus()V
    invoke-static {v1}, Landroid/os/nubia/breathlight/BreathinglightService;->access$100(Landroid/os/nubia/breathlight/BreathinglightService;)V

    .line 132
    return-void
.end method
