.class public final Lcom/google/android/location/f/bd;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/Set;


# instance fields
.field public final b:I

.field private final c:Lcom/google/android/location/f/ak;

.field private final d:I

.field private final e:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/google/android/location/f/bd;->a:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(ILcom/google/android/location/f/ak;ILjava/util/Set;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput p1, p0, Lcom/google/android/location/f/bd;->b:I

    .line 46
    iput-object p2, p0, Lcom/google/android/location/f/bd;->c:Lcom/google/android/location/f/ak;

    .line 47
    iput p3, p0, Lcom/google/android/location/f/bd;->d:I

    .line 48
    iput-object p4, p0, Lcom/google/android/location/f/bd;->e:Ljava/util/Set;

    .line 49
    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/location/f/ak;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/android/location/f/bd;->c:Lcom/google/android/location/f/ak;

    return-object v0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lcom/google/android/location/f/bd;->d:I

    return v0
.end method

.method public final c()Ljava/util/Set;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/android/location/f/bd;->e:Ljava/util/Set;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 66
    const-string v1, "WifiLocationResult [type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    iget v1, p0, Lcom/google/android/location/f/bd;->b:I

    invoke-static {v1}, Lcom/google/android/location/f/be;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    const-string v1, ",position="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    iget-object v1, p0, Lcom/google/android/location/f/bd;->c:Lcom/google/android/location/f/ak;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 70
    const-string v1, ", confidence="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    iget v1, p0, Lcom/google/android/location/f/bd;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 72
    const-string v1, ", outliers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    iget-object v1, p0, Lcom/google/android/location/f/bd;->e:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 74
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
