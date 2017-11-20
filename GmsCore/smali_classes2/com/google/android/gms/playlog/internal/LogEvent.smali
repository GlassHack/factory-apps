.class public Lcom/google/android/gms/playlog/internal/LogEvent;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/playlog/internal/f;


# instance fields
.field public final a:I

.field public final b:J

.field public final c:Ljava/lang/String;

.field public final d:[B

.field public final e:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    new-instance v0, Lcom/google/android/gms/playlog/internal/f;

    invoke-direct {v0}, Lcom/google/android/gms/playlog/internal/f;-><init>()V

    sput-object v0, Lcom/google/android/gms/playlog/internal/LogEvent;->CREATOR:Lcom/google/android/gms/playlog/internal/f;

    return-void
.end method

.method constructor <init>(IJLjava/lang/String;[BLandroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput p1, p0, Lcom/google/android/gms/playlog/internal/LogEvent;->a:I

    .line 52
    iput-wide p2, p0, Lcom/google/android/gms/playlog/internal/LogEvent;->b:J

    .line 53
    iput-object p4, p0, Lcom/google/android/gms/playlog/internal/LogEvent;->c:Ljava/lang/String;

    .line 54
    iput-object p5, p0, Lcom/google/android/gms/playlog/internal/LogEvent;->d:[B

    .line 55
    iput-object p6, p0, Lcom/google/android/gms/playlog/internal/LogEvent;->e:Landroid/os/Bundle;

    .line 56
    return-void
.end method

.method public varargs constructor <init>(JLjava/lang/String;[B[Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/playlog/internal/LogEvent;->a:I

    .line 68
    iput-wide p1, p0, Lcom/google/android/gms/playlog/internal/LogEvent;->b:J

    .line 69
    iput-object p3, p0, Lcom/google/android/gms/playlog/internal/LogEvent;->c:Ljava/lang/String;

    .line 70
    iput-object p4, p0, Lcom/google/android/gms/playlog/internal/LogEvent;->d:[B

    .line 71
    invoke-static {p5}, Lcom/google/android/gms/playlog/internal/LogEvent;->a([Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/playlog/internal/LogEvent;->e:Landroid/os/Bundle;

    .line 72
    return-void
.end method

.method private static varargs a([Ljava/lang/String;)Landroid/os/Bundle;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 89
    if-nez p0, :cond_1

    .line 108
    :cond_0
    return-object v0

    .line 92
    :cond_1
    array-length v1, p0

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_2

    .line 94
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "extras must have an even number of elements"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 97
    :cond_2
    array-length v1, p0

    div-int/lit8 v2, v1, 0x2

    .line 98
    if-eqz v2, :cond_0

    .line 102
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, v2}, Landroid/os/Bundle;-><init>(I)V

    .line 103
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 104
    mul-int/lit8 v3, v1, 0x2

    aget-object v3, p0, v3

    .line 105
    mul-int/lit8 v4, v1, 0x2

    add-int/lit8 v4, v4, 0x1

    aget-object v4, p0, v4

    .line 106
    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 117
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 118
    const-string v0, "tag="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/playlog/internal/LogEvent;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    const-string v0, "eventTime="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/google/android/gms/playlog/internal/LogEvent;->b:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    iget-object v0, p0, Lcom/google/android/gms/playlog/internal/LogEvent;->e:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/playlog/internal/LogEvent;->e:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 121
    const-string v0, "keyValues="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    iget-object v0, p0, Lcom/google/android/gms/playlog/internal/LogEvent;->e:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 123
    const-string v3, "("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    iget-object v3, p0, Lcom/google/android/gms/playlog/internal/LogEvent;->e:Landroid/os/Bundle;

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ")"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    const-string v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 128
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .prologue
    .line 81
    invoke-static {p0, p1}, Lcom/google/android/gms/playlog/internal/f;->a(Lcom/google/android/gms/playlog/internal/LogEvent;Landroid/os/Parcel;)V

    .line 82
    return-void
.end method
