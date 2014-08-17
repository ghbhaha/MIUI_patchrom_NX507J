.class final enum Landroid/view/NubiaVolumePanel$StreamResources;
.super Ljava/lang/Enum;
.source "NubiaVolumePanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/NubiaVolumePanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "StreamResources"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/view/NubiaVolumePanel$StreamResources;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/view/NubiaVolumePanel$StreamResources;

.field public static final enum AlarmStream:Landroid/view/NubiaVolumePanel$StreamResources;

.field public static final enum BluetoothSCOStream:Landroid/view/NubiaVolumePanel$StreamResources;

.field public static final enum MasterStream:Landroid/view/NubiaVolumePanel$StreamResources;

.field public static final enum MediaStream:Landroid/view/NubiaVolumePanel$StreamResources;

.field public static final enum NotificationStream:Landroid/view/NubiaVolumePanel$StreamResources;

.field public static final enum RemoteStream:Landroid/view/NubiaVolumePanel$StreamResources;

.field public static final enum RingerStream:Landroid/view/NubiaVolumePanel$StreamResources;

.field public static final enum VoiceStream:Landroid/view/NubiaVolumePanel$StreamResources;


# instance fields
.field descRes:I

.field iconMuteRes:I

.field iconRes:I

.field show:Z

.field streamType:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    .line 135
    new-instance v0, Landroid/view/NubiaVolumePanel$StreamResources;

    const-string v1, "BluetoothSCOStream"

    const/4 v2, 0x0

    const/4 v3, 0x6

    const v4, 0x104042c

    const v5, 0x108048b

    const v6, 0x108048e

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Landroid/view/NubiaVolumePanel$StreamResources;-><init>(Ljava/lang/String;IIIIIZ)V

    sput-object v0, Landroid/view/NubiaVolumePanel$StreamResources;->BluetoothSCOStream:Landroid/view/NubiaVolumePanel$StreamResources;

    .line 140
    new-instance v0, Landroid/view/NubiaVolumePanel$StreamResources;

    const-string v1, "RingerStream"

    const/4 v2, 0x1

    const/4 v3, 0x2

    const v4, 0x104042d

    const v5, 0x108048d

    const v6, 0x108048d

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Landroid/view/NubiaVolumePanel$StreamResources;-><init>(Ljava/lang/String;IIIIIZ)V

    sput-object v0, Landroid/view/NubiaVolumePanel$StreamResources;->RingerStream:Landroid/view/NubiaVolumePanel$StreamResources;

    .line 145
    new-instance v0, Landroid/view/NubiaVolumePanel$StreamResources;

    const-string v1, "VoiceStream"

    const/4 v2, 0x2

    const/4 v3, 0x0

    const v4, 0x104042e

    const v5, 0x108048c

    const v6, 0x108048c

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Landroid/view/NubiaVolumePanel$StreamResources;-><init>(Ljava/lang/String;IIIIIZ)V

    sput-object v0, Landroid/view/NubiaVolumePanel$StreamResources;->VoiceStream:Landroid/view/NubiaVolumePanel$StreamResources;

    .line 150
    new-instance v0, Landroid/view/NubiaVolumePanel$StreamResources;

    const-string v1, "AlarmStream"

    const/4 v2, 0x3

    const/4 v3, 0x4

    const v4, 0x1040429

    const v5, 0x108048a

    const v6, 0x108048e

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Landroid/view/NubiaVolumePanel$StreamResources;-><init>(Ljava/lang/String;IIIIIZ)V

    sput-object v0, Landroid/view/NubiaVolumePanel$StreamResources;->AlarmStream:Landroid/view/NubiaVolumePanel$StreamResources;

    .line 155
    new-instance v0, Landroid/view/NubiaVolumePanel$StreamResources;

    const-string v1, "MediaStream"

    const/4 v2, 0x4

    const/4 v3, 0x3

    const v4, 0x104042f

    const v5, 0x1080490

    const v6, 0x108048e

    const/4 v7, 0x1

    invoke-direct/range {v0 .. v7}, Landroid/view/NubiaVolumePanel$StreamResources;-><init>(Ljava/lang/String;IIIIIZ)V

    sput-object v0, Landroid/view/NubiaVolumePanel$StreamResources;->MediaStream:Landroid/view/NubiaVolumePanel$StreamResources;

    .line 160
    new-instance v0, Landroid/view/NubiaVolumePanel$StreamResources;

    const-string v1, "NotificationStream"

    const/4 v2, 0x5

    const/4 v3, 0x5

    const v4, 0x1040430

    const v5, 0x10802de

    const v6, 0x10802de

    const/4 v7, 0x1

    invoke-direct/range {v0 .. v7}, Landroid/view/NubiaVolumePanel$StreamResources;-><init>(Ljava/lang/String;IIIIIZ)V

    sput-object v0, Landroid/view/NubiaVolumePanel$StreamResources;->NotificationStream:Landroid/view/NubiaVolumePanel$StreamResources;

    .line 166
    new-instance v0, Landroid/view/NubiaVolumePanel$StreamResources;

    const-string v1, "MasterStream"

    const/4 v2, 0x6

    const/16 v3, -0x64

    const v4, 0x104042f

    const v5, 0x1080490

    const v6, 0x108048e

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Landroid/view/NubiaVolumePanel$StreamResources;-><init>(Ljava/lang/String;IIIIIZ)V

    sput-object v0, Landroid/view/NubiaVolumePanel$StreamResources;->MasterStream:Landroid/view/NubiaVolumePanel$StreamResources;

    .line 171
    new-instance v0, Landroid/view/NubiaVolumePanel$StreamResources;

    const-string v1, "RemoteStream"

    const/4 v2, 0x7

    const/16 v3, -0xc8

    const v4, 0x104042f

    const v5, 0x108036a

    const v6, 0x108035e

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Landroid/view/NubiaVolumePanel$StreamResources;-><init>(Ljava/lang/String;IIIIIZ)V

    sput-object v0, Landroid/view/NubiaVolumePanel$StreamResources;->RemoteStream:Landroid/view/NubiaVolumePanel$StreamResources;

    .line 134
    const/16 v0, 0x8

    new-array v0, v0, [Landroid/view/NubiaVolumePanel$StreamResources;

    const/4 v1, 0x0

    sget-object v2, Landroid/view/NubiaVolumePanel$StreamResources;->BluetoothSCOStream:Landroid/view/NubiaVolumePanel$StreamResources;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Landroid/view/NubiaVolumePanel$StreamResources;->RingerStream:Landroid/view/NubiaVolumePanel$StreamResources;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Landroid/view/NubiaVolumePanel$StreamResources;->VoiceStream:Landroid/view/NubiaVolumePanel$StreamResources;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Landroid/view/NubiaVolumePanel$StreamResources;->AlarmStream:Landroid/view/NubiaVolumePanel$StreamResources;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Landroid/view/NubiaVolumePanel$StreamResources;->MediaStream:Landroid/view/NubiaVolumePanel$StreamResources;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Landroid/view/NubiaVolumePanel$StreamResources;->NotificationStream:Landroid/view/NubiaVolumePanel$StreamResources;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Landroid/view/NubiaVolumePanel$StreamResources;->MasterStream:Landroid/view/NubiaVolumePanel$StreamResources;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Landroid/view/NubiaVolumePanel$StreamResources;->RemoteStream:Landroid/view/NubiaVolumePanel$StreamResources;

    aput-object v2, v0, v1

    sput-object v0, Landroid/view/NubiaVolumePanel$StreamResources;->$VALUES:[Landroid/view/NubiaVolumePanel$StreamResources;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIIIIZ)V
    .locals 0
    .parameter
    .parameter
    .parameter "streamType"
    .parameter "descRes"
    .parameter "iconRes"
    .parameter "iconMuteRes"
    .parameter "show"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIIZ)V"
        }
    .end annotation

    .prologue
    .line 184
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 185
    iput p3, p0, Landroid/view/NubiaVolumePanel$StreamResources;->streamType:I

    .line 186
    iput p4, p0, Landroid/view/NubiaVolumePanel$StreamResources;->descRes:I

    .line 187
    iput p5, p0, Landroid/view/NubiaVolumePanel$StreamResources;->iconRes:I

    .line 188
    iput p6, p0, Landroid/view/NubiaVolumePanel$StreamResources;->iconMuteRes:I

    .line 189
    iput-boolean p7, p0, Landroid/view/NubiaVolumePanel$StreamResources;->show:Z

    .line 190
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/view/NubiaVolumePanel$StreamResources;
    .locals 1
    .parameter "name"

    .prologue
    .line 134
    const-class v0, Landroid/view/NubiaVolumePanel$StreamResources;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/view/NubiaVolumePanel$StreamResources;

    return-object v0
.end method

.method public static values()[Landroid/view/NubiaVolumePanel$StreamResources;
    .locals 1

    .prologue
    .line 134
    sget-object v0, Landroid/view/NubiaVolumePanel$StreamResources;->$VALUES:[Landroid/view/NubiaVolumePanel$StreamResources;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/view/NubiaVolumePanel$StreamResources;

    return-object v0
.end method
