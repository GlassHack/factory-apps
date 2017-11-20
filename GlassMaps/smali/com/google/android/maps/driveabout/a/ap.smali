.class final Lcom/google/android/maps/driveabout/a/ap;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/maps/driveabout/a/ao;


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/a/ao;)V
    .locals 0

    .prologue
    .line 111
    iput-object p1, p0, Lcom/google/android/maps/driveabout/a/ap;->a:Lcom/google/android/maps/driveabout/a/ao;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 114
    iget-object v0, p0, Lcom/google/android/maps/driveabout/a/ap;->a:Lcom/google/android/maps/driveabout/a/ao;

    iget-object v0, v0, Lcom/google/android/maps/driveabout/a/ao;->b:Lcom/google/android/maps/driveabout/a/an;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/a/ap;->a:Lcom/google/android/maps/driveabout/a/ao;

    iget-object v1, v1, Lcom/google/android/maps/driveabout/a/ao;->a:Lcom/google/android/maps/driveabout/a/b;

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/a/an;->b(Lcom/google/android/maps/driveabout/a/b;)V

    .line 115
    return-void
.end method
