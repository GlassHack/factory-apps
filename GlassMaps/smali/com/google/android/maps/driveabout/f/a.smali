.class public final Lcom/google/android/maps/driveabout/f/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/android/maps/driveabout/f/e;

.field private final b:I


# direct methods
.method public constructor <init>(Lcom/google/android/maps/driveabout/f/e;I)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/google/android/maps/driveabout/f/a;->a:Lcom/google/android/maps/driveabout/f/e;

    .line 36
    iput p2, p0, Lcom/google/android/maps/driveabout/f/a;->b:I

    .line 37
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lcom/google/android/maps/driveabout/f/a;->b:I

    return v0
.end method

.method public final a(Lcom/google/android/maps/driveabout/f/b;)Lcom/google/android/maps/driveabout/f/e;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/android/maps/driveabout/f/a;->a:Lcom/google/android/maps/driveabout/f/e;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/f/e;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/google/android/maps/driveabout/f/a;->a:Lcom/google/android/maps/driveabout/f/e;

    invoke-virtual {p1, v0}, Lcom/google/android/maps/driveabout/f/b;->a(Lcom/google/android/maps/driveabout/f/e;)Lcom/google/android/maps/driveabout/f/e;

    move-result-object v0

    .line 53
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/f/a;->a:Lcom/google/android/maps/driveabout/f/e;

    goto :goto_0
.end method
