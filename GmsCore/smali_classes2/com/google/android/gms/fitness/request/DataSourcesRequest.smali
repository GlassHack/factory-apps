.class public Lcom/google/android/gms/fitness/request/DataSourcesRequest;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private final a:I

.field private final b:Ljava/util/List;

.field private final c:Ljava/util/List;

.field private final d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 170
    new-instance v0, Lcom/google/android/gms/fitness/request/e;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/request/e;-><init>()V

    sput-object v0, Lcom/google/android/gms/fitness/request/DataSourcesRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILjava/util/List;Ljava/util/List;Z)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput p1, p0, Lcom/google/android/gms/fitness/request/DataSourcesRequest;->a:I

    .line 55
    iput-object p2, p0, Lcom/google/android/gms/fitness/request/DataSourcesRequest;->b:Ljava/util/List;

    .line 56
    iput-object p3, p0, Lcom/google/android/gms/fitness/request/DataSourcesRequest;->c:Ljava/util/List;

    .line 57
    iput-boolean p4, p0, Lcom/google/android/gms/fitness/request/DataSourcesRequest;->d:Z

    .line 58
    return-void
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/google/android/gms/fitness/request/DataSourcesRequest;->b:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/google/android/gms/fitness/data/DataSource;)Z
    .locals 2

    .prologue
    .line 146
    iget-object v0, p0, Lcom/google/android/gms/fitness/request/DataSourcesRequest;->b:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/DataSource;->a()Lcom/google/android/gms/fitness/data/DataType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/DataSourcesRequest;->c:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/DataSource;->b()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 156
    iget-boolean v0, p0, Lcom/google/android/gms/fitness/request/DataSourcesRequest;->d:Z

    return v0
.end method

.method final c()I
    .locals 1

    .prologue
    .line 174
    iget v0, p0, Lcom/google/android/gms/fitness/request/DataSourcesRequest;->a:I

    return v0
.end method

.method final d()Ljava/util/List;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/google/android/gms/fitness/request/DataSourcesRequest;->c:Ljava/util/List;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 184
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 161
    invoke-static {p0}, Lcom/google/android/gms/common/internal/ag;->a(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/ah;

    move-result-object v0

    const-string v1, "dataTypes"

    iget-object v2, p0, Lcom/google/android/gms/fitness/request/DataSourcesRequest;->b:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/ah;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/ah;

    move-result-object v0

    const-string v1, "sourceTypes"

    iget-object v2, p0, Lcom/google/android/gms/fitness/request/DataSourcesRequest;->c:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/ah;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/ah;

    move-result-object v0

    .line 164
    iget-boolean v1, p0, Lcom/google/android/gms/fitness/request/DataSourcesRequest;->d:Z

    if-eqz v1, :cond_0

    .line 165
    const-string v1, "includeDbOnlySources"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/ah;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/ah;

    .line 167
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/ah;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .prologue
    .line 189
    invoke-static {p0, p1}, Lcom/google/android/gms/fitness/request/e;->a(Lcom/google/android/gms/fitness/request/DataSourcesRequest;Landroid/os/Parcel;)V

    .line 190
    return-void
.end method
