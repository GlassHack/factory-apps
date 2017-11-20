.class public final Lcom/google/android/maps/driveabout/a/ba;
.super Lcom/google/android/maps/driveabout/a/a;
.source "SourceFile"


# instance fields
.field private final a:Landroid/os/Vibrator;

.field private final b:[J


# direct methods
.method public constructor <init>(Landroid/os/Vibrator;[J)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/a/a;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/google/android/maps/driveabout/a/ba;->a:Landroid/os/Vibrator;

    .line 27
    iput-object p2, p0, Lcom/google/android/maps/driveabout/a/ba;->b:[J

    .line 28
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/maps/driveabout/a/b;)V
    .locals 3

    .prologue
    .line 32
    iget-object v0, p0, Lcom/google/android/maps/driveabout/a/ba;->a:Landroid/os/Vibrator;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/a/ba;->b:[J

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate([JI)V

    .line 33
    if-eqz p1, :cond_0

    .line 34
    invoke-interface {p1, p0}, Lcom/google/android/maps/driveabout/a/b;->a(Lcom/google/android/maps/driveabout/a/a;)V

    .line 36
    :cond_0
    return-void
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x0

    return v0
.end method
