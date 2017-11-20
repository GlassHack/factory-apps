.class final Lcom/google/android/maps/driveabout/b/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/google/android/maps/driveabout/b/e;


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/b/e;I)V
    .locals 0

    .prologue
    .line 325
    iput-object p1, p0, Lcom/google/android/maps/driveabout/b/f;->b:Lcom/google/android/maps/driveabout/b/e;

    iput p2, p0, Lcom/google/android/maps/driveabout/b/f;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 328
    iget-object v0, p0, Lcom/google/android/maps/driveabout/b/f;->b:Lcom/google/android/maps/driveabout/b/e;

    iget-object v0, v0, Lcom/google/android/maps/driveabout/b/e;->a:Lcom/google/android/maps/driveabout/b/a;

    iget v1, p0, Lcom/google/android/maps/driveabout/b/f;->a:I

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/b/a;->a(I)V

    .line 329
    return-void
.end method
