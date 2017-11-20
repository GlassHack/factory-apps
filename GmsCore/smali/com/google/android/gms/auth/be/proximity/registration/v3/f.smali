.class public final Lcom/google/android/gms/auth/be/proximity/registration/v3/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/auth/be/proximity/a/c;


# instance fields
.field private final a:Ljava/io/DataOutputStream;


# direct methods
.method private constructor <init>(Ljava/io/OutputStream;)V
    .locals 2

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/io/DataOutputStream;

    new-instance v1, Ljava/io/BufferedOutputStream;

    invoke-direct {v1, p1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lcom/google/android/gms/auth/be/proximity/registration/v3/f;->a:Ljava/io/DataOutputStream;

    .line 45
    return-void
.end method

.method synthetic constructor <init>(Ljava/io/OutputStream;B)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/google/android/gms/auth/be/proximity/registration/v3/f;-><init>(Ljava/io/OutputStream;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/auth/be/proximity/registration/v3/h;)V
    .locals 3

    .prologue
    .line 60
    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/auth/be/proximity/registration/v3/h;->a()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 65
    iget-object v1, p0, Lcom/google/android/gms/auth/be/proximity/registration/v3/f;->a:Ljava/io/DataOutputStream;

    iget-byte v2, p1, Lcom/google/android/gms/auth/be/proximity/a/a;->d:B

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->write(I)V

    .line 66
    iget-object v1, p0, Lcom/google/android/gms/auth/be/proximity/registration/v3/f;->a:Ljava/io/DataOutputStream;

    array-length v2, v0

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 67
    iget-object v1, p0, Lcom/google/android/gms/auth/be/proximity/registration/v3/f;->a:Ljava/io/DataOutputStream;

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->write([B)V

    .line 68
    iget-object v0, p0, Lcom/google/android/gms/auth/be/proximity/registration/v3/f;->a:Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    .line 69
    return-void

    .line 61
    :catch_0
    move-exception v0

    .line 62
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Error in constructing JSON message."

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 19
    check-cast p1, Lcom/google/android/gms/auth/be/proximity/registration/v3/h;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/auth/be/proximity/registration/v3/f;->a(Lcom/google/android/gms/auth/be/proximity/registration/v3/h;)V

    return-void
.end method

.method public final close()V
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/android/gms/auth/be/proximity/registration/v3/f;->a:Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V

    .line 50
    return-void
.end method
