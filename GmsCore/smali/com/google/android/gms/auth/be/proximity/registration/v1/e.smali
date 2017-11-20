.class public final Lcom/google/android/gms/auth/be/proximity/registration/v1/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/auth/be/proximity/a/c;


# instance fields
.field private final a:Ljava/io/DataOutputStream;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 2

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/io/DataOutputStream;

    new-instance v1, Ljava/io/BufferedOutputStream;

    invoke-direct {v1, p1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lcom/google/android/gms/auth/be/proximity/registration/v1/e;->a:Ljava/io/DataOutputStream;

    .line 31
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/auth/be/proximity/registration/v1/f;)V
    .locals 4

    .prologue
    .line 44
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 46
    :try_start_0
    const-string v1, "permit_id"

    iget-object v2, p1, Lcom/google/android/gms/auth/be/proximity/registration/v1/f;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 47
    const-string v1, "permit_license_id"

    iget-object v2, p1, Lcom/google/android/gms/auth/be/proximity/registration/v1/f;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 48
    const-string v1, "data"

    iget-object v2, p1, Lcom/google/android/gms/auth/be/proximity/registration/v1/f;->c:[B

    const/16 v3, 0xa

    invoke-static {v2, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 55
    iget-object v1, p0, Lcom/google/android/gms/auth/be/proximity/registration/v1/e;->a:Ljava/io/DataOutputStream;

    iget-byte v2, p1, Lcom/google/android/gms/auth/be/proximity/a/a;->d:B

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->write(I)V

    .line 56
    iget-object v1, p0, Lcom/google/android/gms/auth/be/proximity/registration/v1/e;->a:Ljava/io/DataOutputStream;

    array-length v2, v0

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 57
    iget-object v1, p0, Lcom/google/android/gms/auth/be/proximity/registration/v1/e;->a:Ljava/io/DataOutputStream;

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->write([B)V

    .line 58
    iget-object v0, p0, Lcom/google/android/gms/auth/be/proximity/registration/v1/e;->a:Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    .line 59
    return-void

    .line 50
    :catch_0
    move-exception v0

    .line 51
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Error in constructing JSON message."

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 21
    check-cast p1, Lcom/google/android/gms/auth/be/proximity/registration/v1/f;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/auth/be/proximity/registration/v1/e;->a(Lcom/google/android/gms/auth/be/proximity/registration/v1/f;)V

    return-void
.end method

.method public final close()V
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/android/gms/auth/be/proximity/registration/v1/e;->a:Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V

    .line 36
    return-void
.end method
