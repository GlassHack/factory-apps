.class public Lcom/google/android/gms/auth/be/proximity/registration/v1/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/google/android/gms/auth/be/proximity/registration/v1/a/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/auth/be/proximity/registration/v1/a/a;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;[B)V
    .locals 6

    .prologue
    .line 33
    invoke-static {p0}, Lcom/google/android/d/a/x;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    invoke-static {p1}, Lcom/google/android/d/a/x;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    invoke-static {p2}, Lcom/google/android/d/a/x;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    new-instance v2, Ljava/lang/String;

    new-instance v0, Lcom/google/m/b/a/d/q;

    invoke-direct {v0}, Lcom/google/m/b/a/d/q;-><init>()V

    array-length v3, p2

    invoke-virtual {v0, p2, v3}, Lcom/google/protobuf/a/f;->a([BI)Lcom/google/protobuf/a/f;

    move-result-object v0

    check-cast v0, Lcom/google/m/b/a/d/q;

    iget-object v0, v0, Lcom/google/m/b/a/d/q;->a:Lcom/google/protobuf/a/a;

    invoke-virtual {v0}, Lcom/google/protobuf/a/a;->b()[B

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 44
    const-string v0, "bluetooth_address"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 45
    sget-object v0, Lcom/google/android/gms/auth/be/proximity/registration/v1/a/a;->a:Ljava/lang/String;

    const-string v1, "Received invalid message: missing %s."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "bluetooth_address"

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    :goto_0
    return-void

    .line 50
    :cond_0
    const-string v0, "permit_access_id"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 51
    sget-object v0, Lcom/google/android/gms/auth/be/proximity/registration/v1/a/a;->a:Ljava/lang/String;

    const-string v1, "Received invalid message: missing %s."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "permit_access_id"

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/google/protobuf/a/e; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 86
    :catch_0
    move-exception v0

    .line 81
    sget-object v1, Lcom/google/android/gms/auth/be/proximity/registration/v1/a/a;->a:Ljava/lang/String;

    const-string v2, "Failed to parse the protobuf data."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 56
    :cond_1
    :try_start_1
    const-string v0, "permit_access_data"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 57
    sget-object v0, Lcom/google/android/gms/auth/be/proximity/registration/v1/a/a;->a:Ljava/lang/String;

    const-string v1, "Received invalid message: missing %s."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "permit_access_data"

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Lcom/google/protobuf/a/e; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 83
    :catch_1
    move-exception v0

    .line 84
    sget-object v1, Lcom/google/android/gms/auth/be/proximity/registration/v1/a/a;->a:Ljava/lang/String;

    const-string v2, "Failed to parse JSON data."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 62
    :cond_2
    :try_start_2
    const-string v0, "tmp_key"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 63
    sget-object v0, Lcom/google/android/gms/auth/be/proximity/registration/v1/a/a;->a:Ljava/lang/String;

    const-string v1, "Received invalid message: missing %s."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "tmp_key"

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Lcom/google/protobuf/a/e; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 69
    :cond_3
    :try_start_3
    new-instance v0, Lcom/google/android/gms/auth/be/proximity/registration/v1/RegistrationInfo;

    const-string v2, "bluetooth_address"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "permit_access_id"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "permit_access_data"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x8

    invoke-static {v4, v5}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v4

    const-string v5, "tmp_key"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x8

    invoke-static {v1, v5}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v5

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/auth/be/proximity/registration/v1/RegistrationInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[B)V
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lcom/google/protobuf/a/e; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    .line 88
    sget-object v1, Lcom/google/android/gms/auth/be/proximity/registration/v1/a/a;->a:Ljava/lang/String;

    const-string v2, "Launching RegistrationBluetoothService..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    invoke-static {p0, v0}, Lcom/google/android/gms/auth/be/proximity/registration/v1/bt/RegistrationBluetoothService;->a(Landroid/content/Context;Lcom/google/android/gms/auth/be/proximity/registration/v1/RegistrationInfo;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_0

    .line 76
    :catch_2
    move-exception v0

    .line 77
    :try_start_4
    sget-object v1, Lcom/google/android/gms/auth/be/proximity/registration/v1/a/a;->a:Ljava/lang/String;

    const-string v2, "Failed to decode Base64 data."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catch Lcom/google/protobuf/a/e; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0
.end method
