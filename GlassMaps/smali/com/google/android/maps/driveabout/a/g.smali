.class final Lcom/google/android/maps/driveabout/a/g;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/google/android/maps/driveabout/a/f;


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/a/f;I)V
    .locals 0

    .prologue
    .line 396
    iput-object p1, p0, Lcom/google/android/maps/driveabout/a/g;->b:Lcom/google/android/maps/driveabout/a/f;

    iput p2, p0, Lcom/google/android/maps/driveabout/a/g;->a:I

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 399
    iget-object v0, p0, Lcom/google/android/maps/driveabout/a/g;->b:Lcom/google/android/maps/driveabout/a/f;

    iget-object v0, v0, Lcom/google/android/maps/driveabout/a/f;->b:Lcom/google/android/maps/driveabout/a/d;

    iget v1, p0, Lcom/google/android/maps/driveabout/a/g;->a:I

    iget-object v2, p0, Lcom/google/android/maps/driveabout/a/g;->b:Lcom/google/android/maps/driveabout/a/f;

    iget-object v2, v2, Lcom/google/android/maps/driveabout/a/f;->a:Lcom/google/android/maps/driveabout/a/k;

    invoke-static {v0, v1, v2}, Lcom/google/android/maps/driveabout/a/d;->a(Lcom/google/android/maps/driveabout/a/d;ILcom/google/android/maps/driveabout/a/k;)V

    .line 400
    return-void
.end method
