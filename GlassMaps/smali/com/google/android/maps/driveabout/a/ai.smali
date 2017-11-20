.class public final Lcom/google/android/maps/driveabout/a/ai;
.super Lcom/google/android/maps/driveabout/a/a;
.source "SourceFile"


# instance fields
.field private final a:[Lcom/google/android/maps/driveabout/a/a;


# direct methods
.method public constructor <init>([Lcom/google/android/maps/driveabout/a/a;)V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/a/a;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/google/android/maps/driveabout/a/ai;->a:[Lcom/google/android/maps/driveabout/a/a;

    .line 65
    return-void
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/a/ai;)[Lcom/google/android/maps/driveabout/a/a;
    .locals 1

    .prologue
    .line 11
    iget-object v0, p0, Lcom/google/android/maps/driveabout/a/ai;->a:[Lcom/google/android/maps/driveabout/a/a;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/google/android/maps/driveabout/a/b;)V
    .locals 1

    .prologue
    .line 69
    new-instance v0, Lcom/google/android/maps/driveabout/a/ak;

    invoke-direct {v0, p0, p1}, Lcom/google/android/maps/driveabout/a/ak;-><init>(Lcom/google/android/maps/driveabout/a/ai;Lcom/google/android/maps/driveabout/a/b;)V

    .line 70
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/a/ak;->a()Z

    .line 71
    return-void
.end method

.method public final a()Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 103
    iget-object v2, p0, Lcom/google/android/maps/driveabout/a/ai;->a:[Lcom/google/android/maps/driveabout/a/a;

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    .line 104
    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/a/a;->a()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 105
    const/4 v0, 0x1

    .line 108
    :cond_0
    return v0

    .line 103
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
