.class public Lcom/google/android/location/f/ak;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final h:Lcom/google/android/location/f/aj;


# instance fields
.field public final d:I

.field public final e:I

.field public final f:I

.field public final g:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 146
    new-instance v0, Lcom/google/android/location/f/al;

    invoke-direct {v0}, Lcom/google/android/location/f/al;-><init>()V

    sput-object v0, Lcom/google/android/location/f/ak;->h:Lcom/google/android/location/f/aj;

    return-void
.end method

.method public constructor <init>(III)V
    .locals 1

    .prologue
    .line 87
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/location/f/ak;-><init>(IIII)V

    .line 88
    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput p1, p0, Lcom/google/android/location/f/ak;->d:I

    .line 73
    iput p2, p0, Lcom/google/android/location/f/ak;->e:I

    .line 74
    iput p3, p0, Lcom/google/android/location/f/ak;->f:I

    .line 75
    iput p4, p0, Lcom/google/android/location/f/ak;->g:I

    .line 76
    return-void
.end method

.method public static a(Ljava/io/PrintWriter;Lcom/google/android/location/f/ak;)V
    .locals 1

    .prologue
    .line 114
    if-nez p1, :cond_0

    .line 115
    const-string v0, "null"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 128
    :goto_0
    return-void

    .line 118
    :cond_0
    const-string v0, "[latE7="

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 119
    iget v0, p1, Lcom/google/android/location/f/ak;->d:I

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 120
    const-string v0, ", lngE7="

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 121
    iget v0, p1, Lcom/google/android/location/f/ak;->e:I

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 122
    const-string v0, ", acc="

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 123
    iget v0, p1, Lcom/google/android/location/f/ak;->f:I

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 124
    const-string v0, "mm, conf="

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 125
    iget v0, p1, Lcom/google/android/location/f/ak;->g:I

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 126
    invoke-virtual {p1}, Lcom/google/android/location/f/ak;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 127
    const-string v0, "]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a(Ljava/lang/StringBuilder;Lcom/google/android/location/f/ak;)V
    .locals 1

    .prologue
    .line 97
    if-nez p1, :cond_0

    .line 98
    const-string v0, "null"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    :goto_0
    return-void

    .line 101
    :cond_0
    const-string v0, "[latE7="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    iget v0, p1, Lcom/google/android/location/f/ak;->d:I

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 103
    const-string v0, ", lngE7="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    iget v0, p1, Lcom/google/android/location/f/ak;->e:I

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 105
    const-string v0, ", acc="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    iget v0, p1, Lcom/google/android/location/f/ak;->f:I

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 107
    const-string v0, "mm, conf="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    iget v0, p1, Lcom/google/android/location/f/ak;->g:I

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 109
    invoke-virtual {p1}, Lcom/google/android/location/f/ak;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    const-string v0, "]"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method


# virtual methods
.method protected a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    const-string v0, ""

    return-object v0
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 139
    iget v0, p0, Lcom/google/android/location/f/ak;->f:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Position [latE7="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/google/android/location/f/ak;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", lngE7="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/location/f/ak;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", accuracyMm="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/location/f/ak;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", confidence="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/location/f/ak;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/location/f/ak;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
