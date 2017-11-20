.class public Lcom/google/android/gms/fitness/request/SessionReadRequest;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private final a:I

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:J

.field private final e:J

.field private final f:Ljava/util/List;

.field private final g:Ljava/util/List;

.field private h:Z

.field private final i:Z

.field private final j:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 421
    new-instance v0, Lcom/google/android/gms/fitness/request/o;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/request/o;-><init>()V

    sput-object v0, Lcom/google/android/gms/fitness/request/SessionReadRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;JJLjava/util/List;Ljava/util/List;ZZLjava/util/List;)V
    .locals 2

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    iput p1, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest;->a:I

    .line 94
    iput-object p2, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest;->b:Ljava/lang/String;

    .line 95
    iput-object p3, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest;->c:Ljava/lang/String;

    .line 96
    iput-wide p4, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest;->d:J

    .line 97
    iput-wide p6, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest;->e:J

    .line 98
    invoke-static {p8}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest;->f:Ljava/util/List;

    .line 99
    invoke-static {p9}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest;->g:Ljava/util/List;

    .line 100
    iput-boolean p10, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest;->h:Z

    .line 101
    iput-boolean p11, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest;->i:Z

    .line 102
    iput-object p12, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest;->j:Ljava/util/List;

    .line 103
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 313
    iget-object v0, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final a(Lcom/google/android/gms/fitness/data/Session;)Z
    .locals 2

    .prologue
    .line 381
    iget-object v0, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest;->j:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/Session;->i()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 320
    iget-object v0, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final c()J
    .locals 2

    .prologue
    .line 327
    iget-wide v0, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest;->d:J

    return-wide v0
.end method

.method public final d()J
    .locals 2

    .prologue
    .line 334
    iget-wide v0, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest;->e:J

    return-wide v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 428
    const/4 v0, 0x0

    return v0
.end method

.method public final e()Ljava/util/List;
    .locals 1

    .prologue
    .line 341
    iget-object v0, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest;->f:Ljava/util/List;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 386
    if-eq p0, p1, :cond_0

    instance-of v2, p1, Lcom/google/android/gms/fitness/request/SessionReadRequest;

    if-eqz v2, :cond_1

    check-cast p1, Lcom/google/android/gms/fitness/request/SessionReadRequest;

    iget-object v2, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/fitness/request/SessionReadRequest;->b:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/ag;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/fitness/request/SessionReadRequest;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-wide v2, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest;->d:J

    iget-wide v4, p1, Lcom/google/android/gms/fitness/request/SessionReadRequest;->d:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-wide v2, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest;->e:J

    iget-wide v4, p1, Lcom/google/android/gms/fitness/request/SessionReadRequest;->e:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest;->f:Ljava/util/List;

    iget-object v3, p1, Lcom/google/android/gms/fitness/request/SessionReadRequest;->f:Ljava/util/List;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/ag;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest;->g:Ljava/util/List;

    iget-object v3, p1, Lcom/google/android/gms/fitness/request/SessionReadRequest;->g:Ljava/util/List;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/ag;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest;->h:Z

    iget-boolean v3, p1, Lcom/google/android/gms/fitness/request/SessionReadRequest;->h:Z

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest;->j:Ljava/util/List;

    iget-object v3, p1, Lcom/google/android/gms/fitness/request/SessionReadRequest;->j:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest;->i:Z

    iget-boolean v3, p1, Lcom/google/android/gms/fitness/request/SessionReadRequest;->i:Z

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

.method public final f()Ljava/util/List;
    .locals 1

    .prologue
    .line 348
    iget-object v0, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest;->g:Ljava/util/List;

    return-object v0
.end method

.method public final g()Z
    .locals 1

    .prologue
    .line 355
    iget-boolean v0, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest;->h:Z

    return v0
.end method

.method public final h()Ljava/util/List;
    .locals 1

    .prologue
    .line 363
    iget-object v0, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest;->j:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 403
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest;->b:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest;->c:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-wide v2, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest;->d:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-wide v2, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest;->e:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final i()Z
    .locals 1

    .prologue
    .line 372
    iget-boolean v0, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest;->i:Z

    return v0
.end method

.method final j()I
    .locals 1

    .prologue
    .line 424
    iget v0, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest;->a:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 408
    invoke-static {p0}, Lcom/google/android/gms/common/internal/ag;->a(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/ah;

    move-result-object v0

    const-string v1, "sessionName"

    iget-object v2, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/ah;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/ah;

    move-result-object v0

    const-string v1, "sessionId"

    iget-object v2, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/ah;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/ah;

    move-result-object v0

    const-string v1, "startTimeMillis"

    iget-wide v2, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest;->d:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/ah;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/ah;

    move-result-object v0

    const-string v1, "endTimeMillis"

    iget-wide v2, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest;->e:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/ah;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/ah;

    move-result-object v0

    const-string v1, "dataTypes"

    iget-object v2, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest;->f:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/ah;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/ah;

    move-result-object v0

    const-string v1, "dataSources"

    iget-object v2, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest;->g:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/ah;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/ah;

    move-result-object v0

    const-string v1, "sessionsFromAllApps"

    iget-boolean v2, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest;->h:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/ah;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/ah;

    move-result-object v0

    const-string v1, "excludedPackages"

    iget-object v2, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest;->j:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/ah;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/ah;

    move-result-object v0

    const-string v1, "useServer"

    iget-boolean v2, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest;->i:Z

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
    .line 433
    invoke-static {p0, p1}, Lcom/google/android/gms/fitness/request/o;->a(Lcom/google/android/gms/fitness/request/SessionReadRequest;Landroid/os/Parcel;)V

    .line 434
    return-void
.end method
