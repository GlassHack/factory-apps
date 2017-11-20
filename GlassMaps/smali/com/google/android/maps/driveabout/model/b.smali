.class public Lcom/google/android/maps/driveabout/model/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:Lcom/google/android/maps/driveabout/model/b;


# instance fields
.field protected final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 32
    new-instance v0, Lcom/google/android/maps/driveabout/model/b;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/model/b;-><init>(I)V

    sput-object v0, Lcom/google/android/maps/driveabout/model/b;->b:Lcom/google/android/maps/driveabout/model/b;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput p1, p0, Lcom/google/android/maps/driveabout/model/b;->a:I

    .line 36
    return-void
.end method

.method public static a(Ljava/io/DataInput;I)Lcom/google/android/maps/driveabout/model/b;
    .locals 2

    .prologue
    .line 44
    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v0

    .line 45
    new-instance v1, Lcom/google/android/maps/driveabout/model/b;

    invoke-direct {v1, v0}, Lcom/google/android/maps/driveabout/model/b;-><init>(I)V

    return-object v1
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lcom/google/android/maps/driveabout/model/b;->a:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 81
    if-ne p0, p1, :cond_1

    .line 85
    :cond_0
    :goto_0
    return v0

    .line 82
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    goto :goto_0

    .line 83
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    goto :goto_0

    .line 84
    :cond_3
    check-cast p1, Lcom/google/android/maps/driveabout/model/b;

    .line 85
    iget v2, p0, Lcom/google/android/maps/driveabout/model/b;->a:I

    iget v3, p1, Lcom/google/android/maps/driveabout/model/b;->a:I

    if-eq v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 76
    iget v0, p0, Lcom/google/android/maps/driveabout/model/b;->a:I

    add-int/lit8 v0, v0, 0x1f

    return v0
.end method
