.class final Lcom/google/android/maps/driveabout/a/ak;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/maps/driveabout/a/b;


# instance fields
.field final synthetic a:Lcom/google/android/maps/driveabout/a/ai;

.field private final b:Lcom/google/android/maps/driveabout/a/b;

.field private c:I


# direct methods
.method public constructor <init>(Lcom/google/android/maps/driveabout/a/ai;Lcom/google/android/maps/driveabout/a/b;)V
    .locals 0

    .prologue
    .line 18
    iput-object p1, p0, Lcom/google/android/maps/driveabout/a/ak;->a:Lcom/google/android/maps/driveabout/a/ai;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p2, p0, Lcom/google/android/maps/driveabout/a/ak;->b:Lcom/google/android/maps/driveabout/a/b;

    .line 20
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/maps/driveabout/a/a;)V
    .locals 2

    .prologue
    .line 24
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/a/ak;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 25
    iget-object v0, p0, Lcom/google/android/maps/driveabout/a/ak;->b:Lcom/google/android/maps/driveabout/a/b;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/a/ak;->a:Lcom/google/android/maps/driveabout/a/ai;

    invoke-interface {v0, v1}, Lcom/google/android/maps/driveabout/a/b;->a(Lcom/google/android/maps/driveabout/a/a;)V

    .line 27
    :cond_0
    return-void
.end method

.method public final a()Z
    .locals 2

    .prologue
    .line 30
    iget v0, p0, Lcom/google/android/maps/driveabout/a/ak;->c:I

    iget-object v1, p0, Lcom/google/android/maps/driveabout/a/ak;->a:Lcom/google/android/maps/driveabout/a/ai;

    invoke-static {v1}, Lcom/google/android/maps/driveabout/a/ai;->a(Lcom/google/android/maps/driveabout/a/ai;)[Lcom/google/android/maps/driveabout/a/a;

    move-result-object v1

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 31
    const/4 v0, 0x0

    .line 36
    :goto_0
    return v0

    .line 33
    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/a/ak;->a:Lcom/google/android/maps/driveabout/a/ai;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/a/ai;->a(Lcom/google/android/maps/driveabout/a/ai;)[Lcom/google/android/maps/driveabout/a/a;

    move-result-object v0

    iget v1, p0, Lcom/google/android/maps/driveabout/a/ak;->c:I

    aget-object v0, v0, v1

    .line 34
    iget v1, p0, Lcom/google/android/maps/driveabout/a/ak;->c:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/maps/driveabout/a/ak;->c:I

    .line 35
    invoke-virtual {v0, p0}, Lcom/google/android/maps/driveabout/a/a;->a(Lcom/google/android/maps/driveabout/a/b;)V

    .line 36
    const/4 v0, 0x1

    goto :goto_0
.end method
