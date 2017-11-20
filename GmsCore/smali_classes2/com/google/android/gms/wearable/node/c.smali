.class public final Lcom/google/android/gms/wearable/node/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:[B

.field public b:Ljava/lang/String;

.field public c:Landroid/os/ParcelFileDescriptor;

.field public d:Landroid/net/Uri;


# direct methods
.method public constructor <init>([BLjava/lang/String;Landroid/os/ParcelFileDescriptor;Landroid/net/Uri;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/google/android/gms/wearable/node/c;->a:[B

    .line 25
    iput-object p2, p0, Lcom/google/android/gms/wearable/node/c;->b:Ljava/lang/String;

    .line 26
    iput-object p3, p0, Lcom/google/android/gms/wearable/node/c;->c:Landroid/os/ParcelFileDescriptor;

    .line 27
    iput-object p4, p0, Lcom/google/android/gms/wearable/node/c;->d:Landroid/net/Uri;

    .line 28
    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/google/android/gms/wearable/node/c;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 34
    new-instance v0, Lcom/google/android/gms/wearable/node/c;

    invoke-direct {v0, v1, p0, v1, v1}, Lcom/google/android/gms/wearable/node/c;-><init>([BLjava/lang/String;Landroid/os/ParcelFileDescriptor;Landroid/net/Uri;)V

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 90
    const-string v1, "Asset["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    iget-object v1, p0, Lcom/google/android/gms/wearable/node/c;->b:Ljava/lang/String;

    if-nez v1, :cond_3

    .line 92
    const-string v1, "nodigest"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/wearable/node/c;->a:[B

    if-eqz v1, :cond_0

    .line 97
    const-string v1, ", size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    iget-object v1, p0, Lcom/google/android/gms/wearable/node/c;->a:[B

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 100
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/wearable/node/c;->c:Landroid/os/ParcelFileDescriptor;

    if-eqz v1, :cond_1

    .line 101
    const-string v1, ", fd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    iget-object v1, p0, Lcom/google/android/gms/wearable/node/c;->c:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 104
    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/wearable/node/c;->d:Landroid/net/Uri;

    if-eqz v1, :cond_2

    .line 105
    const-string v1, ", uri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    iget-object v1, p0, Lcom/google/android/gms/wearable/node/c;->d:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 108
    :cond_2
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 94
    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/wearable/node/c;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method
