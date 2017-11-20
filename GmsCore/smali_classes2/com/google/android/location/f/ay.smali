.class public final Lcom/google/android/location/f/ay;
.super Lcom/google/android/location/f/ak;
.source "SourceFile"


# static fields
.field public static final c:Lcom/google/android/location/f/aj;


# instance fields
.field public final a:I

.field public final b:Lcom/google/android/location/f/ba;

.field private i:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 173
    new-instance v0, Lcom/google/android/location/f/az;

    invoke-direct {v0}, Lcom/google/android/location/f/az;-><init>()V

    sput-object v0, Lcom/google/android/location/f/ay;->c:Lcom/google/android/location/f/aj;

    return-void
.end method

.method public constructor <init>(IIIII)V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/location/f/ak;-><init>(IIII)V

    .line 49
    iput p5, p0, Lcom/google/android/location/f/ay;->a:I

    .line 50
    const/16 v0, 0x50

    if-lt p4, v0, :cond_0

    const/16 v0, 0x54

    if-gt p4, v0, :cond_0

    sget-object v0, Lcom/google/android/location/f/ba;->b:Lcom/google/android/location/f/ba;

    :goto_0
    iput-object v0, p0, Lcom/google/android/location/f/ay;->b:Lcom/google/android/location/f/ba;

    .line 51
    return-void

    .line 50
    :cond_0
    const/16 v0, 0x55

    if-lt p4, v0, :cond_1

    const/16 v0, 0x59

    if-gt p4, v0, :cond_1

    sget-object v0, Lcom/google/android/location/f/ba;->c:Lcom/google/android/location/f/ba;

    goto :goto_0

    :cond_1
    const/16 v0, 0x5a

    if-lt p4, v0, :cond_2

    const/16 v0, 0x5e

    if-gt p4, v0, :cond_2

    sget-object v0, Lcom/google/android/location/f/ba;->d:Lcom/google/android/location/f/ba;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/google/android/location/f/ba;->a:Lcom/google/android/location/f/ba;

    goto :goto_0
.end method

.method static synthetic a(Lcom/google/android/location/f/ay;)I
    .locals 1

    .prologue
    .line 15
    iget v0, p0, Lcom/google/android/location/f/ay;->i:I

    return v0
.end method

.method static synthetic a(Lcom/google/android/location/f/ay;I)I
    .locals 0

    .prologue
    .line 15
    iput p1, p0, Lcom/google/android/location/f/ay;->i:I

    return p1
.end method

.method public static a(Ljava/lang/StringBuilder;Lcom/google/android/location/f/ay;)V
    .locals 1

    .prologue
    .line 146
    if-nez p1, :cond_0

    .line 147
    const-string v0, "null"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    :goto_0
    return-void

    .line 150
    :cond_0
    const-string v0, "["

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    invoke-static {p0, p1}, Lcom/google/android/location/f/ak;->a(Ljava/lang/StringBuilder;Lcom/google/android/location/f/ak;)V

    .line 152
    const-string v0, ", Uncert="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    iget v0, p1, Lcom/google/android/location/f/ay;->a:I

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 154
    const-string v0, "mm, "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    iget-object v0, p1, Lcom/google/android/location/f/ay;->b:Lcom/google/android/location/f/ba;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 156
    const-string v0, "]"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public static final c()Lcom/google/android/location/f/ay;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 71
    new-instance v0, Lcom/google/android/location/f/ay;

    const/4 v3, -0x2

    const/16 v4, 0x55

    const v5, 0x9c40

    move v2, v1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/location/f/ay;-><init>(IIIII)V

    .line 73
    const/4 v1, 0x1

    iput v1, v0, Lcom/google/android/location/f/ay;->i:I

    .line 74
    return-object v0
.end method


# virtual methods
.method public final d()V
    .locals 1

    .prologue
    .line 81
    iget v0, p0, Lcom/google/android/location/f/ay;->i:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/location/f/ay;->i:I

    .line 82
    return-void
.end method

.method public final e()I
    .locals 1

    .prologue
    .line 89
    iget v0, p0, Lcom/google/android/location/f/ay;->i:I

    return v0
.end method

.method public final f()Z
    .locals 1

    .prologue
    .line 99
    iget v0, p0, Lcom/google/android/location/f/ay;->i:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "WifiApPosition ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-super {p0}, Lcom/google/android/location/f/ak;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", horizontalUncertaintyMm="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/location/f/ay;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", positionType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/location/f/ay;->b:Lcom/google/android/location/f/ba;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
