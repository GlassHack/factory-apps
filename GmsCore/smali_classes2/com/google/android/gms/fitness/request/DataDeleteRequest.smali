.class public Lcom/google/android/gms/fitness/request/DataDeleteRequest;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private final a:I

.field private final b:J

.field private final c:J

.field private final d:Ljava/util/List;

.field private final e:Ljava/util/List;

.field private final f:Ljava/util/List;

.field private final g:Z

.field private final h:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 339
    new-instance v0, Lcom/google/android/gms/fitness/request/b;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/request/b;-><init>()V

    sput-object v0, Lcom/google/android/gms/fitness/request/DataDeleteRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(IJJLjava/util/List;Ljava/util/List;Ljava/util/List;ZZ)V
    .locals 2

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    iput p1, p0, Lcom/google/android/gms/fitness/request/DataDeleteRequest;->a:I

    .line 101
    iput-wide p2, p0, Lcom/google/android/gms/fitness/request/DataDeleteRequest;->b:J

    .line 102
    iput-wide p4, p0, Lcom/google/android/gms/fitness/request/DataDeleteRequest;->c:J

    .line 103
    invoke-static {p6}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/fitness/request/DataDeleteRequest;->d:Ljava/util/List;

    .line 104
    invoke-static {p7}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/fitness/request/DataDeleteRequest;->e:Ljava/util/List;

    .line 105
    iput-object p8, p0, Lcom/google/android/gms/fitness/request/DataDeleteRequest;->f:Ljava/util/List;

    .line 106
    iput-boolean p9, p0, Lcom/google/android/gms/fitness/request/DataDeleteRequest;->g:Z

    .line 107
    iput-boolean p10, p0, Lcom/google/android/gms/fitness/request/DataDeleteRequest;->h:Z

    .line 108
    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2

    .prologue
    .line 261
    iget-wide v0, p0, Lcom/google/android/gms/fitness/request/DataDeleteRequest;->b:J

    return-wide v0
.end method

.method public final b()J
    .locals 2

    .prologue
    .line 269
    iget-wide v0, p0, Lcom/google/android/gms/fitness/request/DataDeleteRequest;->c:J

    return-wide v0
.end method

.method public final c()Ljava/util/List;
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lcom/google/android/gms/fitness/request/DataDeleteRequest;->d:Ljava/util/List;

    return-object v0
.end method

.method public final d()Ljava/util/List;
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lcom/google/android/gms/fitness/request/DataDeleteRequest;->e:Ljava/util/List;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 348
    const/4 v0, 0x0

    return v0
.end method

.method public final e()Ljava/util/List;
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Lcom/google/android/gms/fitness/request/DataDeleteRequest;->f:Ljava/util/List;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 308
    if-eq p1, p0, :cond_0

    instance-of v2, p1, Lcom/google/android/gms/fitness/request/DataDeleteRequest;

    if-eqz v2, :cond_1

    check-cast p1, Lcom/google/android/gms/fitness/request/DataDeleteRequest;

    iget-wide v2, p0, Lcom/google/android/gms/fitness/request/DataDeleteRequest;->b:J

    iget-wide v4, p1, Lcom/google/android/gms/fitness/request/DataDeleteRequest;->b:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-wide v2, p0, Lcom/google/android/gms/fitness/request/DataDeleteRequest;->c:J

    iget-wide v4, p1, Lcom/google/android/gms/fitness/request/DataDeleteRequest;->c:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/fitness/request/DataDeleteRequest;->d:Ljava/util/List;

    iget-object v3, p1, Lcom/google/android/gms/fitness/request/DataDeleteRequest;->d:Ljava/util/List;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/ag;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/fitness/request/DataDeleteRequest;->e:Ljava/util/List;

    iget-object v3, p1, Lcom/google/android/gms/fitness/request/DataDeleteRequest;->e:Ljava/util/List;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/ag;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/fitness/request/DataDeleteRequest;->f:Ljava/util/List;

    iget-object v3, p1, Lcom/google/android/gms/fitness/request/DataDeleteRequest;->f:Ljava/util/List;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/ag;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/google/android/gms/fitness/request/DataDeleteRequest;->g:Z

    iget-boolean v3, p1, Lcom/google/android/gms/fitness/request/DataDeleteRequest;->g:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lcom/google/android/gms/fitness/request/DataDeleteRequest;->h:Z

    iget-boolean v3, p1, Lcom/google/android/gms/fitness/request/DataDeleteRequest;->h:Z

    if-ne v2, v3, :cond_2

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

.method public final f()Z
    .locals 1

    .prologue
    .line 297
    iget-boolean v0, p0, Lcom/google/android/gms/fitness/request/DataDeleteRequest;->g:Z

    return v0
.end method

.method public final g()Z
    .locals 1

    .prologue
    .line 304
    iget-boolean v0, p0, Lcom/google/android/gms/fitness/request/DataDeleteRequest;->h:Z

    return v0
.end method

.method final h()I
    .locals 1

    .prologue
    .line 343
    iget v0, p0, Lcom/google/android/gms/fitness/request/DataDeleteRequest;->a:I

    return v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 323
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-wide v2, p0, Lcom/google/android/gms/fitness/request/DataDeleteRequest;->b:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/google/android/gms/fitness/request/DataDeleteRequest;->c:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 328
    invoke-static {p0}, Lcom/google/android/gms/common/internal/ag;->a(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/ah;

    move-result-object v0

    const-string v1, "startTimeMillis"

    iget-wide v2, p0, Lcom/google/android/gms/fitness/request/DataDeleteRequest;->b:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/ah;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/ah;

    move-result-object v0

    const-string v1, "endTimeMillis"

    iget-wide v2, p0, Lcom/google/android/gms/fitness/request/DataDeleteRequest;->c:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/ah;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/ah;

    move-result-object v0

    const-string v1, "dataSources"

    iget-object v2, p0, Lcom/google/android/gms/fitness/request/DataDeleteRequest;->d:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/ah;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/ah;

    move-result-object v0

    const-string v1, "dateTypes"

    iget-object v2, p0, Lcom/google/android/gms/fitness/request/DataDeleteRequest;->e:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/ah;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/ah;

    move-result-object v0

    const-string v1, "sessions"

    iget-object v2, p0, Lcom/google/android/gms/fitness/request/DataDeleteRequest;->f:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/ah;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/ah;

    move-result-object v0

    const-string v1, "deleteAllData"

    iget-boolean v2, p0, Lcom/google/android/gms/fitness/request/DataDeleteRequest;->g:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/ah;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/ah;

    move-result-object v0

    const-string v1, "deleteAllSessions"

    iget-boolean v2, p0, Lcom/google/android/gms/fitness/request/DataDeleteRequest;->h:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

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
    .line 353
    invoke-static {p0, p1}, Lcom/google/android/gms/fitness/request/b;->a(Lcom/google/android/gms/fitness/request/DataDeleteRequest;Landroid/os/Parcel;)V

    .line 354
    return-void
.end method
