.class public abstract Lcom/google/android/gms/gcm/Task;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Z

.field private final d:Z


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object v1, p0, Lcom/google/android/gms/gcm/Task;->a:Ljava/lang/String;

    .line 34
    iput-object v1, p0, Lcom/google/android/gms/gcm/Task;->b:Ljava/lang/String;

    .line 35
    iput-boolean v0, p0, Lcom/google/android/gms/gcm/Task;->c:Z

    .line 36
    iput-boolean v0, p0, Lcom/google/android/gms/gcm/Task;->d:Z

    .line 37
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/gcm/Task;->a:Ljava/lang/String;

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/gcm/Task;->b:Ljava/lang/String;

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/gms/gcm/Task;->c:Z

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_1

    :goto_1
    iput-boolean v1, p0, Lcom/google/android/gms/gcm/Task;->d:Z

    .line 51
    return-void

    :cond_0
    move v0, v2

    .line 49
    goto :goto_0

    :cond_1
    move v1, v2

    .line 50
    goto :goto_1
.end method

.method constructor <init>(Lcom/google/android/gms/gcm/bd;)V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iget-object v0, p1, Lcom/google/android/gms/gcm/bd;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/gcm/Task;->a:Ljava/lang/String;

    .line 41
    iget-object v0, p1, Lcom/google/android/gms/gcm/bd;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/gcm/Task;->b:Ljava/lang/String;

    .line 42
    iget-boolean v0, p1, Lcom/google/android/gms/gcm/bd;->e:Z

    iput-boolean v0, p0, Lcom/google/android/gms/gcm/Task;->c:Z

    .line 43
    iget-boolean v0, p1, Lcom/google/android/gms/gcm/bd;->f:Z

    iput-boolean v0, p0, Lcom/google/android/gms/gcm/Task;->d:Z

    .line 44
    return-void
.end method


# virtual methods
.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/android/gms/gcm/Task;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/android/gms/gcm/Task;->b:Ljava/lang/String;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 91
    const/4 v0, 0x0

    return v0
.end method

.method public final e()Z
    .locals 1

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/google/android/gms/gcm/Task;->c:Z

    return v0
.end method

.method public final f()Z
    .locals 1

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/google/android/gms/gcm/Task;->d:Z

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 83
    iget-object v0, p0, Lcom/google/android/gms/gcm/Task;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lcom/google/android/gms/gcm/Task;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 85
    iget-boolean v0, p0, Lcom/google/android/gms/gcm/Task;->c:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 86
    iget-boolean v0, p0, Lcom/google/android/gms/gcm/Task;->d:Z

    if-eqz v0, :cond_1

    :goto_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 87
    return-void

    :cond_0
    move v0, v2

    .line 85
    goto :goto_0

    :cond_1
    move v1, v2

    .line 86
    goto :goto_1
.end method
