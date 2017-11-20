.class public Lcom/google/android/gms/fitness/request/StartBleScanRequest;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private final a:I

.field private final b:Ljava/util/List;

.field private final c:Lcom/google/android/gms/fitness/request/h;

.field private final d:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 195
    new-instance v0, Lcom/google/android/gms/fitness/request/t;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/request/t;-><init>()V

    sput-object v0, Lcom/google/android/gms/fitness/request/StartBleScanRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILjava/util/List;Landroid/os/IBinder;I)V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput p1, p0, Lcom/google/android/gms/fitness/request/StartBleScanRequest;->a:I

    .line 54
    iput-object p2, p0, Lcom/google/android/gms/fitness/request/StartBleScanRequest;->b:Ljava/util/List;

    .line 55
    invoke-static {p3}, Lcom/google/android/gms/fitness/request/i;->a(Landroid/os/IBinder;)Lcom/google/android/gms/fitness/request/h;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/fitness/request/StartBleScanRequest;->c:Lcom/google/android/gms/fitness/request/h;

    .line 56
    iput p4, p0, Lcom/google/android/gms/fitness/request/StartBleScanRequest;->d:I

    .line 57
    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/fitness/request/h;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/google/android/gms/fitness/request/StartBleScanRequest;->c:Lcom/google/android/gms/fitness/request/h;

    return-object v0
.end method

.method public final a(Lcom/google/android/gms/fitness/data/BleDevice;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 175
    iget-object v0, p0, Lcom/google/android/gms/fitness/request/StartBleScanRequest;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 184
    :goto_0
    return v0

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/fitness/request/StartBleScanRequest;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/data/DataType;

    .line 180
    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/BleDevice;->d()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 181
    goto :goto_0

    .line 184
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()Ljava/util/List;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/google/android/gms/fitness/request/StartBleScanRequest;->b:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final c()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/google/android/gms/fitness/request/StartBleScanRequest;->c:Lcom/google/android/gms/fitness/request/h;

    invoke-interface {v0}, Lcom/google/android/gms/fitness/request/h;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public final d()I
    .locals 1

    .prologue
    .line 166
    iget v0, p0, Lcom/google/android/gms/fitness/request/StartBleScanRequest;->d:I

    return v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 204
    const/4 v0, 0x0

    return v0
.end method

.method final e()I
    .locals 1

    .prologue
    .line 199
    iget v0, p0, Lcom/google/android/gms/fitness/request/StartBleScanRequest;->a:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 189
    invoke-static {p0}, Lcom/google/android/gms/common/internal/ag;->a(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/ah;

    move-result-object v0

    const-string v1, "dataTypes"

    iget-object v2, p0, Lcom/google/android/gms/fitness/request/StartBleScanRequest;->b:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/ah;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/ah;

    move-result-object v0

    const-string v1, "timeoutSecs"

    iget v2, p0, Lcom/google/android/gms/fitness/request/StartBleScanRequest;->d:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/ah;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/ah;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/ah;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .prologue
    .line 209
    invoke-static {p0, p1}, Lcom/google/android/gms/fitness/request/t;->a(Lcom/google/android/gms/fitness/request/StartBleScanRequest;Landroid/os/Parcel;)V

    .line 210
    return-void
.end method
