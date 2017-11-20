.class public Lcom/google/android/gms/clearcut/LogEventParcelable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/clearcut/f;


# instance fields
.field public final a:I

.field public b:Lcom/google/android/gms/playlog/internal/PlayLoggerContext;

.field public c:[B

.field public final d:Lcom/google/n/a/b/a/a/i;

.field public final e:Lcom/google/android/gms/clearcut/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    new-instance v0, Lcom/google/android/gms/clearcut/f;

    invoke-direct {v0}, Lcom/google/android/gms/clearcut/f;-><init>()V

    sput-object v0, Lcom/google/android/gms/clearcut/LogEventParcelable;->CREATOR:Lcom/google/android/gms/clearcut/f;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/playlog/internal/PlayLoggerContext;[B)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput p1, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->a:I

    .line 61
    iput-object p2, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->b:Lcom/google/android/gms/playlog/internal/PlayLoggerContext;

    .line 62
    iput-object p3, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->c:[B

    .line 63
    iput-object v0, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->d:Lcom/google/n/a/b/a/a/i;

    .line 64
    iput-object v0, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->e:Lcom/google/android/gms/clearcut/d;

    .line 65
    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/playlog/internal/PlayLoggerContext;Lcom/google/n/a/b/a/a/i;Lcom/google/android/gms/clearcut/d;)V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->a:I

    .line 50
    iput-object p1, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->b:Lcom/google/android/gms/playlog/internal/PlayLoggerContext;

    .line 51
    iput-object p2, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->d:Lcom/google/n/a/b/a/a/i;

    .line 52
    iput-object p3, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->e:Lcom/google/android/gms/clearcut/d;

    .line 53
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 118
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 73
    if-ne p0, p1, :cond_1

    .line 85
    :cond_0
    :goto_0
    return v0

    .line 77
    :cond_1
    instance-of v2, p1, Lcom/google/android/gms/clearcut/LogEventParcelable;

    if-eqz v2, :cond_3

    .line 78
    check-cast p1, Lcom/google/android/gms/clearcut/LogEventParcelable;

    .line 79
    iget v2, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->a:I

    iget v3, p1, Lcom/google/android/gms/clearcut/LogEventParcelable;->a:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->b:Lcom/google/android/gms/playlog/internal/PlayLoggerContext;

    iget-object v3, p1, Lcom/google/android/gms/clearcut/LogEventParcelable;->b:Lcom/google/android/gms/playlog/internal/PlayLoggerContext;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/ag;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->c:[B

    iget-object v3, p1, Lcom/google/android/gms/clearcut/LogEventParcelable;->c:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->d:Lcom/google/n/a/b/a/a/i;

    iget-object v3, p1, Lcom/google/android/gms/clearcut/LogEventParcelable;->d:Lcom/google/n/a/b/a/a/i;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/ag;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->e:Lcom/google/android/gms/clearcut/d;

    iget-object v3, p1, Lcom/google/android/gms/clearcut/LogEventParcelable;->e:Lcom/google/android/gms/clearcut/d;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/ag;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v1

    .line 85
    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 90
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->b:Lcom/google/android/gms/playlog/internal/PlayLoggerContext;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->c:[B

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->d:Lcom/google/n/a/b/a/a/i;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->e:Lcom/google/android/gms/clearcut/d;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 101
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "LogEventParcelable["

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 102
    iget v0, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->a:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 103
    const-string v0, ", "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    iget-object v0, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->b:Lcom/google/android/gms/playlog/internal/PlayLoggerContext;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 105
    const-string v0, ", "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    iget-object v0, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->c:[B

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    const-string v0, ", "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    iget-object v0, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->d:Lcom/google/n/a/b/a/a/i;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 109
    const-string v0, ", "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    iget-object v0, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->e:Lcom/google/android/gms/clearcut/d;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 111
    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 106
    :cond_0
    new-instance v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->c:[B

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .prologue
    .line 123
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/clearcut/f;->a(Lcom/google/android/gms/clearcut/LogEventParcelable;Landroid/os/Parcel;I)V

    .line 124
    return-void
.end method
