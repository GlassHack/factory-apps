.class public Lcom/google/android/location/f/y;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final f:Lcom/google/android/location/f/aj;


# instance fields
.field public final c:Lcom/google/android/location/f/ak;

.field public final d:Lcom/google/android/location/f/aa;

.field public final e:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 81
    new-instance v0, Lcom/google/android/location/f/z;

    invoke-direct {v0}, Lcom/google/android/location/f/z;-><init>()V

    sput-object v0, Lcom/google/android/location/f/y;->f:Lcom/google/android/location/f/aj;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/location/f/ak;Lcom/google/android/location/f/aa;J)V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/google/android/location/f/y;->c:Lcom/google/android/location/f/ak;

    .line 40
    iput-object p2, p0, Lcom/google/android/location/f/y;->d:Lcom/google/android/location/f/aa;

    .line 41
    iput-wide p3, p0, Lcom/google/android/location/f/y;->e:J

    .line 42
    sget-object v2, Lcom/google/android/location/f/aa;->a:Lcom/google/android/location/f/aa;

    if-ne p2, v2, :cond_0

    move v2, v0

    :goto_0
    if-eqz p1, :cond_1

    :goto_1
    if-eq v2, v0, :cond_2

    .line 43
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Invalid Args"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move v2, v1

    .line 42
    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    .line 45
    :cond_2
    return-void
.end method

.method public static a(Ljava/lang/StringBuilder;Lcom/google/android/location/f/y;)V
    .locals 2

    .prologue
    .line 54
    if-nez p1, :cond_0

    .line 55
    const-string v0, "null"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    :goto_0
    return-void

    .line 58
    :cond_0
    const-string v0, "LocatorResult [position="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    iget-object v0, p1, Lcom/google/android/location/f/y;->c:Lcom/google/android/location/f/ak;

    invoke-static {p0, v0}, Lcom/google/android/location/f/ak;->a(Ljava/lang/StringBuilder;Lcom/google/android/location/f/ak;)V

    .line 60
    const-string v0, ", status="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    iget-object v0, p1, Lcom/google/android/location/f/y;->d:Lcom/google/android/location/f/aa;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 62
    const-string v0, ", reportTime="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    iget-wide v0, p1, Lcom/google/android/location/f/y;->e:J

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 64
    const-string v0, "]"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LocatorResult [position="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/location/f/y;->c:Lcom/google/android/location/f/ak;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/location/f/y;->d:Lcom/google/android/location/f/aa;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", reportTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/google/android/location/f/y;->e:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
