.class public Lcom/google/android/gms/fitness/result/ListSubscriptionsResult;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/api/aa;
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private final a:I

.field private final b:Ljava/util/List;

.field private final c:Lcom/google/android/gms/common/api/Status;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 128
    new-instance v0, Lcom/google/android/gms/fitness/result/e;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/result/e;-><init>()V

    sput-object v0, Lcom/google/android/gms/fitness/result/ListSubscriptionsResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILjava/util/List;Lcom/google/android/gms/common/api/Status;)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput p1, p0, Lcom/google/android/gms/fitness/result/ListSubscriptionsResult;->a:I

    .line 52
    iput-object p2, p0, Lcom/google/android/gms/fitness/result/ListSubscriptionsResult;->b:Ljava/util/List;

    .line 53
    iput-object p3, p0, Lcom/google/android/gms/fitness/result/ListSubscriptionsResult;->c:Lcom/google/android/gms/common/api/Status;

    .line 54
    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lcom/google/android/gms/common/api/Status;)V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/gms/fitness/result/ListSubscriptionsResult;->a:I

    .line 61
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/fitness/result/ListSubscriptionsResult;->b:Ljava/util/List;

    .line 62
    const-string v0, "status"

    invoke-static {p2, v0}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/Status;

    iput-object v0, p0, Lcom/google/android/gms/fitness/result/ListSubscriptionsResult;->c:Lcom/google/android/gms/common/api/Status;

    .line 63
    return-void
.end method

.method public static a(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/fitness/result/ListSubscriptionsResult;
    .locals 2

    .prologue
    .line 71
    new-instance v0, Lcom/google/android/gms/fitness/result/ListSubscriptionsResult;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/google/android/gms/fitness/result/ListSubscriptionsResult;-><init>(Ljava/util/List;Lcom/google/android/gms/common/api/Status;)V

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/google/android/gms/fitness/result/ListSubscriptionsResult;->b:Ljava/util/List;

    return-object v0
.end method

.method public final b()Lcom/google/android/gms/common/api/Status;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/google/android/gms/fitness/result/ListSubscriptionsResult;->c:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method

.method final c()I
    .locals 1

    .prologue
    .line 133
    iget v0, p0, Lcom/google/android/gms/fitness/result/ListSubscriptionsResult;->a:I

    return v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 138
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 105
    if-eq p0, p1, :cond_0

    instance-of v2, p1, Lcom/google/android/gms/fitness/result/ListSubscriptionsResult;

    if-eqz v2, :cond_1

    check-cast p1, Lcom/google/android/gms/fitness/result/ListSubscriptionsResult;

    iget-object v2, p0, Lcom/google/android/gms/fitness/result/ListSubscriptionsResult;->c:Lcom/google/android/gms/common/api/Status;

    iget-object v3, p1, Lcom/google/android/gms/fitness/result/ListSubscriptionsResult;->c:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/common/api/Status;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/fitness/result/ListSubscriptionsResult;->b:Ljava/util/List;

    iget-object v3, p1, Lcom/google/android/gms/fitness/result/ListSubscriptionsResult;->b:Ljava/util/List;

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
    .line 117
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/fitness/result/ListSubscriptionsResult;->c:Lcom/google/android/gms/common/api/Status;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/fitness/result/ListSubscriptionsResult;->b:Ljava/util/List;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 122
    invoke-static {p0}, Lcom/google/android/gms/common/internal/ag;->a(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/ah;

    move-result-object v0

    const-string v1, "status"

    iget-object v2, p0, Lcom/google/android/gms/fitness/result/ListSubscriptionsResult;->c:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/ah;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/ah;

    move-result-object v0

    const-string v1, "dataSets"

    iget-object v2, p0, Lcom/google/android/gms/fitness/result/ListSubscriptionsResult;->b:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/ah;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/ah;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/ah;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .prologue
    .line 143
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/fitness/result/e;->a(Lcom/google/android/gms/fitness/result/ListSubscriptionsResult;Landroid/os/Parcel;I)V

    .line 144
    return-void
.end method
