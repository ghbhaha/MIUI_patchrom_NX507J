.class public final Landroid/os/UserHandle;
.super Ljava/lang/Object;
.source "UserHandle.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final ALL:Landroid/os/UserHandle; = null

.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/os/UserHandle;",
            ">;"
        }
    .end annotation
.end field

.field public static final CURRENT:Landroid/os/UserHandle; = null

.field public static final CURRENT_OR_SELF:Landroid/os/UserHandle; = null

.field public static final MU_ENABLED:Z = true

.field public static final OWNER:Landroid/os/UserHandle; = null

#the value of this static final field might be set in the static constructor
.field public static final PER_USER_RANGE:I = 0x0

.field public static final USER_ALL:I = -0x1

.field public static final USER_CURRENT:I = -0x2

.field public static final USER_CURRENT_OR_SELF:I = -0x3

.field public static final USER_NULL:I = -0x2710

.field public static final USER_OWNER:I


# instance fields
.field final mHandle:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 32
    sget-boolean v0, Landroid/util/PowerMoConfig;->WITHOUT_ALL:Z

    if-eqz v0, :cond_0

    const v0, 0x186a0

    :goto_0
    sput v0, Landroid/os/UserHandle;->PER_USER_RANGE:I

    .line 39
    new-instance v0, Landroid/os/UserHandle;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    sput-object v0, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 45
    new-instance v0, Landroid/os/UserHandle;

    const/4 v1, -0x2

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    sput-object v0, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 55
    new-instance v0, Landroid/os/UserHandle;

    const/4 v1, -0x3

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    sput-object v0, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    .line 64
    new-instance v0, Landroid/os/UserHandle;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    sput-object v0, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    .line 293
    new-instance v0, Landroid/os/UserHandle$1;

    invoke-direct {v0}, Landroid/os/UserHandle$1;-><init>()V

    sput-object v0, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void

    .line 32
    :cond_0
    const v0, 0xf4240

    goto :goto_0
.end method

.method public constructor <init>(I)V
    .locals 0
    .parameter "h"

    .prologue
    .line 221
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 222
    iput p1, p0, Landroid/os/UserHandle;->mHandle:I

    .line 223
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 314
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 315
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/UserHandle;->mHandle:I

    .line 316
    return-void
.end method

.method public static formatUid(Ljava/io/PrintWriter;I)V
    .locals 3
    .parameter "pw"
    .parameter "uid"

    .prologue
    const/16 v2, 0x2710

    .line 192
    if-ge p1, v2, :cond_0

    .line 193
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(I)V

    .line 209
    :goto_0
    return-void

    .line 195
    :cond_0
    const/16 v1, 0x75

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 196
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 197
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .line 198
    .local v0, appId:I
    sget v1, Landroid/os/Process;->FIRST_ISOLATED_UID:I

    if-lt v0, v1, :cond_1

    sget v1, Landroid/os/Process;->LAST_ISOLATED_UID:I

    if-gt v0, v1, :cond_1

    .line 199
    const/16 v1, 0x69

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 200
    sget v1, Landroid/os/Process;->FIRST_ISOLATED_UID:I

    sub-int v1, v0, v1

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(I)V

    goto :goto_0

    .line 201
    :cond_1
    if-lt v0, v2, :cond_2

    .line 202
    const/16 v1, 0x61

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 203
    add-int/lit16 v1, v0, -0x2710

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(I)V

    goto :goto_0

    .line 205
    :cond_2
    const/16 v1, 0x73

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 206
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(I)V

    goto :goto_0
.end method

.method public static formatUid(Ljava/lang/StringBuilder;I)V
    .locals 3
    .parameter "sb"
    .parameter "uid"

    .prologue
    const/16 v2, 0x2710

    .line 167
    if-ge p1, v2, :cond_0

    .line 168
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 184
    :goto_0
    return-void

    .line 170
    :cond_0
    const/16 v1, 0x75

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 171
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 172
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .line 173
    .local v0, appId:I
    sget v1, Landroid/os/Process;->FIRST_ISOLATED_UID:I

    if-lt v0, v1, :cond_1

    sget v1, Landroid/os/Process;->LAST_ISOLATED_UID:I

    if-gt v0, v1, :cond_1

    .line 174
    const/16 v1, 0x69

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 175
    sget v1, Landroid/os/Process;->FIRST_ISOLATED_UID:I

    sub-int v1, v0, v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 176
    :cond_1
    if-lt v0, v2, :cond_2

    .line 177
    const/16 v1, 0x61

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 178
    add-int/lit16 v1, v0, -0x2710

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 180
    :cond_2
    const/16 v1, 0x73

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 181
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public static final getAppId(I)I
    .locals 1
    .parameter "uid"

    .prologue
    .line 149
    sget v0, Landroid/os/UserHandle;->PER_USER_RANGE:I

    rem-int v0, p0, v0

    return v0
.end method

.method public static final getCallingUserId()I
    .locals 1

    .prologue
    .line 129
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    return v0
.end method

.method public static final getSharedAppGid(I)I
    .locals 2
    .parameter "id"

    .prologue
    .line 157
    sget v0, Landroid/os/Process;->FIRST_SHARED_APPLICATION_GID:I

    sget v1, Landroid/os/UserHandle;->PER_USER_RANGE:I

    rem-int v1, p0, v1

    add-int/2addr v0, v1

    add-int/lit16 v0, v0, -0x2710

    return v0
.end method

.method public static final getUid(II)I
    .locals 2
    .parameter "userId"
    .parameter "appId"

    .prologue
    .line 138
    sget v0, Landroid/os/UserHandle;->PER_USER_RANGE:I

    mul-int/2addr v0, p0

    sget v1, Landroid/os/UserHandle;->PER_USER_RANGE:I

    rem-int v1, p1, v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static final getUserId(I)I
    .locals 1
    .parameter "uid"

    .prologue
    .line 121
    sget v0, Landroid/os/UserHandle;->PER_USER_RANGE:I

    div-int v0, p0, v0

    return v0
.end method

.method public static isApp(I)Z
    .locals 3
    .parameter "uid"

    .prologue
    const/4 v1, 0x0

    .line 107
    if-lez p0, :cond_0

    .line 108
    invoke-static {p0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .line 109
    .local v0, appId:I
    const/16 v2, 0x2710

    if-lt v0, v2, :cond_0

    const/16 v2, 0x4e1f

    if-gt v0, v2, :cond_0

    const/4 v1, 0x1

    .line 111
    .end local v0           #appId:I
    :cond_0
    return v1
.end method

.method public static final isIsolated(I)Z
    .locals 3
    .parameter "uid"

    .prologue
    const/4 v1, 0x0

    .line 97
    if-lez p0, :cond_0

    .line 98
    invoke-static {p0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .line 99
    .local v0, appId:I
    sget v2, Landroid/os/Process;->FIRST_ISOLATED_UID:I

    if-lt v0, v2, :cond_0

    sget v2, Landroid/os/Process;->LAST_ISOLATED_UID:I

    if-gt v0, v2, :cond_0

    const/4 v1, 0x1

    .line 101
    .end local v0           #appId:I
    :cond_0
    return v1
.end method

.method public static final isSameApp(II)Z
    .locals 2
    .parameter "uid1"
    .parameter "uid2"

    .prologue
    .line 92
    invoke-static {p0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final isSameUser(II)Z
    .locals 2
    .parameter "uid1"
    .parameter "uid2"

    .prologue
    .line 80
    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final myUserId()I
    .locals 1

    .prologue
    .line 217
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    return v0
.end method

.method public static readFromParcel(Landroid/os/Parcel;)Landroid/os/UserHandle;
    .locals 2
    .parameter "in"

    .prologue
    .line 289
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 290
    .local v0, h:I
    const/16 v1, -0x2710

    if-eq v0, v1, :cond_0

    new-instance v1, Landroid/os/UserHandle;

    invoke-direct {v1, v0}, Landroid/os/UserHandle;-><init>(I)V

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static writeToParcel(Landroid/os/UserHandle;Landroid/os/Parcel;)V
    .locals 1
    .parameter "h"
    .parameter "out"

    .prologue
    .line 270
    if-eqz p0, :cond_0

    .line 271
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/os/UserHandle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 275
    :goto_0
    return-void

    .line 273
    :cond_0
    const/16 v0, -0x2710

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 253
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "obj"

    .prologue
    const/4 v2, 0x0

    .line 238
    if-eqz p1, :cond_0

    .line 239
    :try_start_0
    move-object v0, p1

    check-cast v0, Landroid/os/UserHandle;

    move-object v1, v0

    .line 240
    .local v1, other:Landroid/os/UserHandle;
    iget v3, p0, Landroid/os/UserHandle;->mHandle:I

    iget v4, v1, Landroid/os/UserHandle;->mHandle:I
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v3, v4, :cond_0

    const/4 v2, 0x1

    .line 244
    .end local v1           #other:Landroid/os/UserHandle;
    :cond_0
    :goto_0
    return v2

    .line 242
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public getIdentifier()I
    .locals 1

    .prologue
    .line 227
    iget v0, p0, Landroid/os/UserHandle;->mHandle:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 249
    iget v0, p0, Landroid/os/UserHandle;->mHandle:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 232
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UserHandle{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/os/UserHandle;->mHandle:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 257
    iget v0, p0, Landroid/os/UserHandle;->mHandle:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 258
    return-void
.end method
