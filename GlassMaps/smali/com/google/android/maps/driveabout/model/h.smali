.class public final Lcom/google/android/maps/driveabout/model/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/maps/driveabout/model/j;


# instance fields
.field private a:Lcom/google/android/maps/driveabout/model/aq;


# direct methods
.method private constructor <init>(Lcom/google/android/maps/driveabout/model/aq;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/google/android/maps/driveabout/model/h;->a:Lcom/google/android/maps/driveabout/model/aq;

    .line 20
    return-void
.end method

.method public static a(Ljava/io/DataInput;ILcom/google/android/maps/driveabout/model/ar;)Lcom/google/android/maps/driveabout/model/h;
    .locals 2

    .prologue
    .line 54
    invoke-static {p0}, Lcom/google/android/maps/driveabout/model/ba;->a(Ljava/io/DataInput;)I

    move-result v1

    .line 55
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 56
    invoke-static {p0}, Lcom/google/android/maps/driveabout/model/ba;->a(Ljava/io/DataInput;)I

    .line 55
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 58
    :cond_0
    new-instance v0, Lcom/google/android/maps/driveabout/model/h;

    invoke-static {}, Lcom/google/android/maps/driveabout/model/aq;->a()Lcom/google/android/maps/driveabout/model/aq;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/model/h;-><init>(Lcom/google/android/maps/driveabout/model/aq;)V

    return-object v0
.end method


# virtual methods
.method public final b()Lcom/google/android/maps/driveabout/model/aq;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/google/android/maps/driveabout/model/h;->a:Lcom/google/android/maps/driveabout/model/aq;

    return-object v0
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x1

    return v0
.end method

.method public final d()I
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x0

    return v0
.end method
