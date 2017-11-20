.class final Lcom/google/android/gms/wearable/node/u;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Lcom/google/android/gms/wearable/c/m;

.field final b:Ljava/security/MessageDigest;

.field c:Ljava/io/File;

.field d:Ljava/io/FileOutputStream;

.field final synthetic e:Lcom/google/android/gms/wearable/node/t;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/wearable/node/t;Lcom/google/android/gms/wearable/c/m;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 137
    iput-object p1, p0, Lcom/google/android/gms/wearable/node/u;->e:Lcom/google/android/gms/wearable/node/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    iput-object p2, p0, Lcom/google/android/gms/wearable/node/u;->a:Lcom/google/android/gms/wearable/c/m;

    .line 139
    iput-object v0, p0, Lcom/google/android/gms/wearable/node/u;->c:Ljava/io/File;

    .line 140
    iput-object v0, p0, Lcom/google/android/gms/wearable/node/u;->d:Ljava/io/FileOutputStream;

    .line 141
    invoke-static {}, Lcom/google/android/gms/wearable/node/m;->a()Ljava/security/MessageDigest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/wearable/node/u;->b:Ljava/security/MessageDigest;

    .line 142
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 177
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/wearable/node/u;->d:Ljava/io/FileOutputStream;

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/google/android/gms/wearable/node/u;->d:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 183
    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/wearable/node/u;->d:Ljava/io/FileOutputStream;

    .line 184
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final a(Lcom/google/android/gms/wearable/c/k;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 149
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/wearable/node/u;->c:Ljava/io/File;

    if-nez v1, :cond_0

    .line 150
    iget-object v1, p0, Lcom/google/android/gms/wearable/node/u;->e:Lcom/google/android/gms/wearable/node/t;

    iget-object v1, v1, Lcom/google/android/gms/wearable/node/t;->a:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/wearable/c/k;->a:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/wearable/node/t;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/wearable/node/u;->c:Ljava/io/File;

    .line 151
    new-instance v1, Ljava/io/FileOutputStream;

    iget-object v2, p0, Lcom/google/android/gms/wearable/node/u;->c:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object v1, p0, Lcom/google/android/gms/wearable/node/u;->d:Ljava/io/FileOutputStream;

    .line 154
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/wearable/node/u;->b:Ljava/security/MessageDigest;

    iget-object v2, p1, Lcom/google/android/gms/wearable/c/k;->c:[B

    invoke-virtual {v1, v2}, Ljava/security/MessageDigest;->update([B)V

    .line 155
    iget-object v1, p0, Lcom/google/android/gms/wearable/node/u;->d:Ljava/io/FileOutputStream;

    iget-object v2, p1, Lcom/google/android/gms/wearable/c/k;->c:[B

    invoke-virtual {v1, v2}, Ljava/io/FileOutputStream;->write([B)V

    .line 156
    iget-boolean v1, p1, Lcom/google/android/gms/wearable/c/k;->b:Z

    if-eqz v1, :cond_1

    .line 157
    invoke-virtual {p0}, Lcom/google/android/gms/wearable/node/u;->a()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    :goto_0
    return v0

    .line 160
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 162
    :catch_0
    move-exception v1

    .line 163
    const-string v2, "wearable"

    const-string v3, "IncomingMessageBuffer: IOException encountered when writing file."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 164
    invoke-virtual {p0}, Lcom/google/android/gms/wearable/node/u;->a()V

    goto :goto_0
.end method
