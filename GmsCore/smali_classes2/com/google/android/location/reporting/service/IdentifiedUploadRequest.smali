.class public Lcom/google/android/location/reporting/service/IdentifiedUploadRequest;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/google/android/location/reporting/i;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private final a:J

.field private final b:J

.field private final c:Lcom/google/android/gms/location/reporting/UploadRequest;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    new-instance v0, Lcom/google/android/location/reporting/service/l;

    invoke-direct {v0}, Lcom/google/android/location/reporting/service/l;-><init>()V

    sput-object v0, Lcom/google/android/location/reporting/service/IdentifiedUploadRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(JJLcom/google/android/gms/location/reporting/UploadRequest;)V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-wide p1, p0, Lcom/google/android/location/reporting/service/IdentifiedUploadRequest;->a:J

    .line 56
    iput-wide p3, p0, Lcom/google/android/location/reporting/service/IdentifiedUploadRequest;->b:J

    .line 57
    const-string v0, "request"

    invoke-static {p5, v0}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/location/reporting/UploadRequest;

    iput-object v0, p0, Lcom/google/android/location/reporting/service/IdentifiedUploadRequest;->c:Lcom/google/android/gms/location/reporting/UploadRequest;

    .line 58
    return-void
.end method

.method public static a(Landroid/os/Parcel;)Lcom/google/android/location/reporting/service/IdentifiedUploadRequest;
    .locals 7

    .prologue
    .line 43
    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 44
    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 45
    const-class v0, Lcom/google/android/gms/location/reporting/UploadRequest;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/location/reporting/UploadRequest;

    .line 46
    new-instance v1, Lcom/google/android/location/reporting/service/IdentifiedUploadRequest;

    invoke-direct/range {v1 .. v6}, Lcom/google/android/location/reporting/service/IdentifiedUploadRequest;-><init>(JJLcom/google/android/gms/location/reporting/UploadRequest;)V

    return-object v1
.end method

.method public static a(Lcom/google/android/location/reporting/a/d;)Lcom/google/android/location/reporting/service/IdentifiedUploadRequest;
    .locals 11

    .prologue
    .line 64
    iget-object v10, p0, Lcom/google/android/location/reporting/a/d;->c:Lcom/google/android/location/reporting/a/h;

    new-instance v2, Landroid/accounts/Account;

    iget-object v0, v10, Lcom/google/android/location/reporting/a/h;->b:Ljava/lang/String;

    iget-object v1, v10, Lcom/google/android/location/reporting/a/h;->c:Ljava/lang/String;

    invoke-direct {v2, v0, v1}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/location/reporting/UploadRequest;

    iget-object v1, v10, Lcom/google/android/location/reporting/a/h;->a:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v3, v10, Lcom/google/android/location/reporting/a/h;->d:Ljava/lang/String;

    iget-object v4, v10, Lcom/google/android/location/reporting/a/h;->e:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget-object v6, v10, Lcom/google/android/location/reporting/a/h;->f:Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iget-object v8, v10, Lcom/google/android/location/reporting/a/h;->g:Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    iget-object v10, v10, Lcom/google/android/location/reporting/a/h;->h:Ljava/lang/String;

    invoke-direct/range {v0 .. v10}, Lcom/google/android/gms/location/reporting/UploadRequest;-><init>(ILandroid/accounts/Account;Ljava/lang/String;JJJLjava/lang/String;)V

    .line 65
    new-instance v1, Lcom/google/android/location/reporting/service/IdentifiedUploadRequest;

    iget-object v2, p0, Lcom/google/android/location/reporting/a/d;->a:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v4, p0, Lcom/google/android/location/reporting/a/d;->b:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    move-object v6, v0

    invoke-direct/range {v1 .. v6}, Lcom/google/android/location/reporting/service/IdentifiedUploadRequest;-><init>(JJLcom/google/android/gms/location/reporting/UploadRequest;)V

    return-object v1
.end method


# virtual methods
.method public final a()J
    .locals 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/google/android/location/reporting/service/IdentifiedUploadRequest;->c:Lcom/google/android/gms/location/reporting/UploadRequest;

    invoke-virtual {v0}, Lcom/google/android/gms/location/reporting/UploadRequest;->e()J

    move-result-wide v0

    return-wide v0
.end method

.method public final b()J
    .locals 2

    .prologue
    .line 106
    iget-object v0, p0, Lcom/google/android/location/reporting/service/IdentifiedUploadRequest;->c:Lcom/google/android/gms/location/reporting/UploadRequest;

    invoke-virtual {v0}, Lcom/google/android/gms/location/reporting/UploadRequest;->f()J

    move-result-wide v0

    return-wide v0
.end method

.method public final c()Ljava/lang/String;
    .locals 2

    .prologue
    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/android/location/reporting/service/IdentifiedUploadRequest;->c:Lcom/google/android/gms/location/reporting/UploadRequest;

    invoke-virtual {v1}, Lcom/google/android/gms/location/reporting/UploadRequest;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/location/reporting/service/IdentifiedUploadRequest;->c:Lcom/google/android/gms/location/reporting/UploadRequest;

    invoke-virtual {v1}, Lcom/google/android/gms/location/reporting/UploadRequest;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final d()Lcom/google/android/location/reporting/a/d;
    .locals 6

    .prologue
    .line 72
    new-instance v0, Lcom/google/android/location/reporting/a/d;

    invoke-direct {v0}, Lcom/google/android/location/reporting/a/d;-><init>()V

    .line 73
    iget-wide v2, p0, Lcom/google/android/location/reporting/service/IdentifiedUploadRequest;->a:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/location/reporting/a/d;->a:Ljava/lang/Long;

    .line 74
    iget-wide v2, p0, Lcom/google/android/location/reporting/service/IdentifiedUploadRequest;->b:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/location/reporting/a/d;->b:Ljava/lang/Long;

    .line 75
    iget-object v1, p0, Lcom/google/android/location/reporting/service/IdentifiedUploadRequest;->c:Lcom/google/android/gms/location/reporting/UploadRequest;

    new-instance v2, Lcom/google/android/location/reporting/a/h;

    invoke-direct {v2}, Lcom/google/android/location/reporting/a/h;-><init>()V

    invoke-virtual {v1}, Lcom/google/android/gms/location/reporting/UploadRequest;->a()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v2, Lcom/google/android/location/reporting/a/h;->a:Ljava/lang/Integer;

    invoke-virtual {v1}, Lcom/google/android/gms/location/reporting/UploadRequest;->b()Landroid/accounts/Account;

    move-result-object v3

    iget-object v4, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    iput-object v4, v2, Lcom/google/android/location/reporting/a/h;->b:Ljava/lang/String;

    iget-object v3, v3, Landroid/accounts/Account;->type:Ljava/lang/String;

    iput-object v3, v2, Lcom/google/android/location/reporting/a/h;->c:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/google/android/gms/location/reporting/UploadRequest;->c()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/google/android/location/reporting/a/h;->d:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/google/android/gms/location/reporting/UploadRequest;->d()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, v2, Lcom/google/android/location/reporting/a/h;->e:Ljava/lang/Long;

    invoke-virtual {v1}, Lcom/google/android/gms/location/reporting/UploadRequest;->e()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, v2, Lcom/google/android/location/reporting/a/h;->f:Ljava/lang/Long;

    invoke-virtual {v1}, Lcom/google/android/gms/location/reporting/UploadRequest;->f()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, v2, Lcom/google/android/location/reporting/a/h;->g:Ljava/lang/Long;

    invoke-virtual {v1}, Lcom/google/android/gms/location/reporting/UploadRequest;->g()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/google/android/location/reporting/a/h;->h:Ljava/lang/String;

    iput-object v2, v0, Lcom/google/android/location/reporting/a/d;->c:Lcom/google/android/location/reporting/a/h;

    .line 76
    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 140
    const/4 v0, 0x0

    return v0
.end method

.method public final e()J
    .locals 2

    .prologue
    .line 83
    iget-wide v0, p0, Lcom/google/android/location/reporting/service/IdentifiedUploadRequest;->a:J

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 125
    instance-of v1, p1, Lcom/google/android/location/reporting/service/IdentifiedUploadRequest;

    if-nez v1, :cond_1

    .line 129
    :cond_0
    :goto_0
    return v0

    .line 128
    :cond_1
    check-cast p1, Lcom/google/android/location/reporting/service/IdentifiedUploadRequest;

    .line 129
    iget-wide v2, p0, Lcom/google/android/location/reporting/service/IdentifiedUploadRequest;->a:J

    iget-wide v4, p1, Lcom/google/android/location/reporting/service/IdentifiedUploadRequest;->a:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    iget-wide v2, p0, Lcom/google/android/location/reporting/service/IdentifiedUploadRequest;->b:J

    iget-wide v4, p1, Lcom/google/android/location/reporting/service/IdentifiedUploadRequest;->b:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/location/reporting/service/IdentifiedUploadRequest;->c:Lcom/google/android/gms/location/reporting/UploadRequest;

    iget-object v2, p1, Lcom/google/android/location/reporting/service/IdentifiedUploadRequest;->c:Lcom/google/android/gms/location/reporting/UploadRequest;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/location/reporting/UploadRequest;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final f()J
    .locals 2

    .prologue
    .line 91
    iget-wide v0, p0, Lcom/google/android/location/reporting/service/IdentifiedUploadRequest;->b:J

    return-wide v0
.end method

.method public final g()Lcom/google/android/gms/location/reporting/UploadRequest;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/google/android/location/reporting/service/IdentifiedUploadRequest;->c:Lcom/google/android/gms/location/reporting/UploadRequest;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 135
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-wide v2, p0, Lcom/google/android/location/reporting/service/IdentifiedUploadRequest;->a:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/google/android/location/reporting/service/IdentifiedUploadRequest;->b:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/location/reporting/service/IdentifiedUploadRequest;->c:Lcom/google/android/gms/location/reporting/UploadRequest;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "IdentifiedUploadRequest{mId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/google/android/location/reporting/service/IdentifiedUploadRequest;->a:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mElapsedRealtime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/google/android/location/reporting/service/IdentifiedUploadRequest;->b:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mRequest="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/location/reporting/service/IdentifiedUploadRequest;->c:Lcom/google/android/gms/location/reporting/UploadRequest;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 145
    iget-wide v0, p0, Lcom/google/android/location/reporting/service/IdentifiedUploadRequest;->a:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 146
    iget-wide v0, p0, Lcom/google/android/location/reporting/service/IdentifiedUploadRequest;->b:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 147
    iget-object v0, p0, Lcom/google/android/location/reporting/service/IdentifiedUploadRequest;->c:Lcom/google/android/gms/location/reporting/UploadRequest;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 148
    return-void
.end method
