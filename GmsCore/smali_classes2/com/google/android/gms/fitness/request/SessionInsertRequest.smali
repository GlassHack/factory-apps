.class public Lcom/google/android/gms/fitness/request/SessionInsertRequest;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private final a:I

.field private final b:Lcom/google/android/gms/fitness/data/Session;

.field private final c:Ljava/util/List;

.field private final d:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 252
    new-instance v0, Lcom/google/android/gms/fitness/request/n;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/request/n;-><init>()V

    sput-object v0, Lcom/google/android/gms/fitness/request/SessionInsertRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/fitness/data/Session;Ljava/util/List;Ljava/util/List;)V
    .locals 1

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput p1, p0, Lcom/google/android/gms/fitness/request/SessionInsertRequest;->a:I

    .line 76
    iput-object p2, p0, Lcom/google/android/gms/fitness/request/SessionInsertRequest;->b:Lcom/google/android/gms/fitness/data/Session;

    .line 77
    invoke-static {p3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/fitness/request/SessionInsertRequest;->c:Ljava/util/List;

    .line 78
    invoke-static {p4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/fitness/request/SessionInsertRequest;->d:Ljava/util/List;

    .line 79
    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/fitness/data/Session;
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/google/android/gms/fitness/request/SessionInsertRequest;->b:Lcom/google/android/gms/fitness/data/Session;

    return-object v0
.end method

.method public final b()Ljava/util/List;
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/google/android/gms/fitness/request/SessionInsertRequest;->c:Ljava/util/List;

    return-object v0
.end method

.method public final c()Ljava/util/List;
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/google/android/gms/fitness/request/SessionInsertRequest;->d:Ljava/util/List;

    return-object v0
.end method

.method final d()I
    .locals 1

    .prologue
    .line 255
    iget v0, p0, Lcom/google/android/gms/fitness/request/SessionInsertRequest;->a:I

    return v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 259
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 229
    if-eq p1, p0, :cond_0

    instance-of v2, p1, Lcom/google/android/gms/fitness/request/SessionInsertRequest;

    if-eqz v2, :cond_1

    check-cast p1, Lcom/google/android/gms/fitness/request/SessionInsertRequest;

    iget-object v2, p0, Lcom/google/android/gms/fitness/request/SessionInsertRequest;->b:Lcom/google/android/gms/fitness/data/Session;

    iget-object v3, p1, Lcom/google/android/gms/fitness/request/SessionInsertRequest;->b:Lcom/google/android/gms/fitness/data/Session;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/ag;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/fitness/request/SessionInsertRequest;->c:Ljava/util/List;

    iget-object v3, p1, Lcom/google/android/gms/fitness/request/SessionInsertRequest;->c:Ljava/util/List;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/ag;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/fitness/request/SessionInsertRequest;->d:Ljava/util/List;

    iget-object v3, p1, Lcom/google/android/gms/fitness/request/SessionInsertRequest;->d:Ljava/util/List;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/ag;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v1

    :goto_0
    if-eqz v2, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    return v0

    :cond_2
    move v2, v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 240
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/fitness/request/SessionInsertRequest;->b:Lcom/google/android/gms/fitness/data/Session;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/fitness/request/SessionInsertRequest;->c:Ljava/util/List;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/fitness/request/SessionInsertRequest;->d:Ljava/util/List;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 245
    invoke-static {p0}, Lcom/google/android/gms/common/internal/ag;->a(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/ah;

    move-result-object v0

    const-string v1, "session"

    iget-object v2, p0, Lcom/google/android/gms/fitness/request/SessionInsertRequest;->b:Lcom/google/android/gms/fitness/data/Session;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/ah;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/ah;

    move-result-object v0

    const-string v1, "dataSets"

    iget-object v2, p0, Lcom/google/android/gms/fitness/request/SessionInsertRequest;->c:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/ah;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/ah;

    move-result-object v0

    const-string v1, "aggregateDataPoints"

    iget-object v2, p0, Lcom/google/android/gms/fitness/request/SessionInsertRequest;->d:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/ah;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/ah;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/ah;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .prologue
    .line 264
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/fitness/request/n;->a(Lcom/google/android/gms/fitness/request/SessionInsertRequest;Landroid/os/Parcel;I)V

    .line 265
    return-void
.end method
