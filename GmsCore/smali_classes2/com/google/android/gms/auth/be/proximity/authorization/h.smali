.class public final Lcom/google/android/gms/auth/be/proximity/authorization/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/auth/be/proximity/a/c;


# static fields
.field private static final a:Landroid/util/SparseArray;


# instance fields
.field private final b:Ljava/io/DataOutputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 31
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 33
    sput-object v0, Lcom/google/android/gms/auth/be/proximity/authorization/h;->a:Landroid/util/SparseArray;

    const/4 v1, 0x2

    const-string v2, "data_changed"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 34
    sget-object v0, Lcom/google/android/gms/auth/be/proximity/authorization/h;->a:Landroid/util/SparseArray;

    const/4 v1, 0x1

    const-string v2, "user_absent"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 35
    sget-object v0, Lcom/google/android/gms/auth/be/proximity/authorization/h;->a:Landroid/util/SparseArray;

    const/4 v1, 0x0

    const-string v2, "user_present"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 36
    return-void
.end method

.method private constructor <init>(Ljava/io/OutputStream;)V
    .locals 2

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    new-instance v0, Ljava/io/DataOutputStream;

    new-instance v1, Ljava/io/BufferedOutputStream;

    invoke-direct {v1, p1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lcom/google/android/gms/auth/be/proximity/authorization/h;->b:Ljava/io/DataOutputStream;

    .line 79
    return-void
.end method

.method synthetic constructor <init>(Ljava/io/OutputStream;B)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/google/android/gms/auth/be/proximity/authorization/h;-><init>(Ljava/io/OutputStream;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/auth/be/proximity/authorization/k;)V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 92
    iget-byte v1, p1, Lcom/google/android/gms/auth/be/proximity/a/a;->d:B

    packed-switch v1, :pswitch_data_0

    .line 103
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Unsupported mesasge version: %d."

    new-array v3, v3, [Ljava/lang/Object;

    iget-byte v4, p1, Lcom/google/android/gms/auth/be/proximity/a/a;->d:B

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 94
    :pswitch_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    instance-of v1, p1, Lcom/google/android/gms/auth/be/proximity/authorization/a/a/d;

    if-eqz v1, :cond_0

    const-string v1, "status"

    const-string v3, "failure"

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "permit_id"

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/auth/be/proximity/authorization/a/a/d;

    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/gms/auth/be/proximity/authorization/a/a/d;->a:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/auth/be/proximity/authorization/h;->b:Ljava/io/DataOutputStream;

    iget-byte v3, p1, Lcom/google/android/gms/auth/be/proximity/a/a;->d:B

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->write(I)V

    iget-object v2, p0, Lcom/google/android/gms/auth/be/proximity/authorization/h;->b:Ljava/io/DataOutputStream;

    array-length v3, v1

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    iget-object v2, p0, Lcom/google/android/gms/auth/be/proximity/authorization/h;->b:Ljava/io/DataOutputStream;

    invoke-virtual {v2, v1}, Ljava/io/DataOutputStream;->write([B)V

    iget-object v1, p0, Lcom/google/android/gms/auth/be/proximity/authorization/h;->b:Ljava/io/DataOutputStream;

    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V

    .line 101
    :goto_1
    return-void

    .line 94
    :cond_0
    :try_start_1
    instance-of v1, p1, Lcom/google/android/gms/auth/be/proximity/authorization/a/a/e;

    if-eqz v1, :cond_1

    const-string v1, "status"

    const-string v3, "retry"

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/io/IOException;

    const-string v3, "Error in constructing JSON message."

    invoke-direct {v2, v3, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_1
    :try_start_2
    instance-of v1, p1, Lcom/google/android/gms/auth/be/proximity/authorization/a/a/f;

    if-eqz v1, :cond_2

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/auth/be/proximity/authorization/a/a/f;

    move-object v1, v0

    const-string v3, "status"

    const-string v4, "success"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "permit_id"

    iget-object v4, v1, Lcom/google/android/gms/auth/be/proximity/authorization/a/a/f;->b:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "permit_license_id"

    iget-object v4, v1, Lcom/google/android/gms/auth/be/proximity/authorization/a/a/f;->c:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "data"

    iget-object v1, v1, Lcom/google/android/gms/auth/be/proximity/authorization/a/a/f;->a:[B

    const/16 v4, 0xa

    invoke-static {v1, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :cond_2
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Unexpected message type: %s."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    .line 97
    :pswitch_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    :try_start_3
    instance-of v1, p1, Lcom/google/android/gms/auth/be/proximity/authorization/a/b/d;

    if-eqz v1, :cond_3

    const-string v1, "type"

    const-string v3, "authorization"

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "status"

    const-string v3, "failure"

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "permit_id"

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/auth/be/proximity/authorization/a/b/d;

    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/gms/auth/be/proximity/authorization/a/b/d;->a:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    :goto_2
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/auth/be/proximity/authorization/h;->b:Ljava/io/DataOutputStream;

    iget-byte v3, p1, Lcom/google/android/gms/auth/be/proximity/a/a;->d:B

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->write(I)V

    iget-object v2, p0, Lcom/google/android/gms/auth/be/proximity/authorization/h;->b:Ljava/io/DataOutputStream;

    array-length v3, v1

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    iget-object v2, p0, Lcom/google/android/gms/auth/be/proximity/authorization/h;->b:Ljava/io/DataOutputStream;

    invoke-virtual {v2, v1}, Ljava/io/DataOutputStream;->write([B)V

    iget-object v1, p0, Lcom/google/android/gms/auth/be/proximity/authorization/h;->b:Ljava/io/DataOutputStream;

    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V

    goto/16 :goto_1

    :cond_3
    :try_start_4
    instance-of v1, p1, Lcom/google/android/gms/auth/be/proximity/authorization/a/b/g;

    if-eqz v1, :cond_4

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/auth/be/proximity/authorization/a/b/g;

    move-object v1, v0

    const-string v3, "type"

    const-string v4, "authorization"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "status"

    const-string v4, "success"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "permit_id"

    iget-object v4, v1, Lcom/google/android/gms/auth/be/proximity/authorization/a/b/g;->b:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "permit_license_id"

    iget-object v4, v1, Lcom/google/android/gms/auth/be/proximity/authorization/a/b/g;->c:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "data"

    iget-object v1, v1, Lcom/google/android/gms/auth/be/proximity/authorization/a/b/g;->a:[B

    const/16 v4, 0xa

    invoke-static {v1, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    :catch_1
    move-exception v1

    new-instance v2, Ljava/io/IOException;

    const-string v3, "Error in constructing JSON message."

    invoke-direct {v2, v3, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_4
    :try_start_5
    instance-of v1, p1, Lcom/google/android/gms/auth/be/proximity/authorization/a/b/f;

    if-eqz v1, :cond_5

    const-string v1, "type"

    const-string v3, "status_update"

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "status"

    sget-object v4, Lcom/google/android/gms/auth/be/proximity/authorization/h;->a:Landroid/util/SparseArray;

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/auth/be/proximity/authorization/a/b/f;

    move-object v1, v0

    iget v1, v1, Lcom/google/android/gms/auth/be/proximity/authorization/a/b/f;->a:I

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_2

    :cond_5
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Unexpected message type: %s."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_1

    .line 100
    :pswitch_2
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    :try_start_6
    instance-of v1, p1, Lcom/google/android/gms/auth/be/proximity/authorization/a/c/g;

    if-eqz v1, :cond_6

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/auth/be/proximity/authorization/a/c/g;

    move-object v1, v0

    const-string v3, "payload"

    iget-object v1, v1, Lcom/google/android/gms/auth/be/proximity/authorization/a/c/g;->a:[B

    const/16 v4, 0xa

    invoke-static {v1, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/auth/be/proximity/authorization/h;->b:Ljava/io/DataOutputStream;

    iget-byte v3, p1, Lcom/google/android/gms/auth/be/proximity/a/a;->d:B

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->write(I)V

    iget-object v2, p0, Lcom/google/android/gms/auth/be/proximity/authorization/h;->b:Ljava/io/DataOutputStream;

    array-length v3, v1

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    iget-object v2, p0, Lcom/google/android/gms/auth/be/proximity/authorization/h;->b:Ljava/io/DataOutputStream;

    invoke-virtual {v2, v1}, Ljava/io/DataOutputStream;->write([B)V

    iget-object v1, p0, Lcom/google/android/gms/auth/be/proximity/authorization/h;->b:Ljava/io/DataOutputStream;

    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V

    goto/16 :goto_1

    :cond_6
    :try_start_7
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Unexpected message type: %s."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_2

    :catch_2
    move-exception v1

    new-instance v2, Ljava/io/IOException;

    const-string v3, "Error in constructing JSON message."

    invoke-direct {v2, v3, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 92
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 30
    check-cast p1, Lcom/google/android/gms/auth/be/proximity/authorization/k;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/auth/be/proximity/authorization/h;->a(Lcom/google/android/gms/auth/be/proximity/authorization/k;)V

    return-void
.end method

.method public final close()V
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/google/android/gms/auth/be/proximity/authorization/h;->b:Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V

    .line 84
    return-void
.end method
