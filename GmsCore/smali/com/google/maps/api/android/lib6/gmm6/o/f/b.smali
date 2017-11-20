.class public final Lcom/google/maps/api/android/lib6/gmm6/o/f/b;
.super Ljava/lang/Object;


# static fields
.field private static a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/maps/api/android/lib6/gmm6/o/f/b;->a:Z

    return-void
.end method

.method static a()V
    .locals 2

    sget-boolean v0, Lcom/google/maps/api/android/lib6/gmm6/o/f/b;->a:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Attempt to update live data from outside a Behavior"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method
