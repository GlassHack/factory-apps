.class final Lcom/google/android/gms/auth/trustagent/trustlet/am;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 281
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/os/Parcel;)Lcom/google/android/gms/auth/trustagent/trustlet/UnlockTag;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 285
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 287
    if-nez v1, :cond_0

    .line 295
    :goto_0
    return-object v0

    .line 292
    :cond_0
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/google/android/gms/auth/trustagent/trustlet/UnlockTag;->a(Lorg/json/JSONObject;)Lcom/google/android/gms/auth/trustagent/trustlet/UnlockTag;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 294
    :catch_0
    move-exception v1

    const-string v1, "Coffee - UnlockTag"

    const-string v2, "error deserializing UnlockTag"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 281
    invoke-static {p1}, Lcom/google/android/gms/auth/trustagent/trustlet/am;->a(Landroid/os/Parcel;)Lcom/google/android/gms/auth/trustagent/trustlet/UnlockTag;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 281
    new-array v0, p1, [Lcom/google/android/gms/auth/trustagent/trustlet/UnlockTag;

    return-object v0
.end method
