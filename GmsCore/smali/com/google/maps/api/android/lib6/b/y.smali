.class public final Lcom/google/maps/api/android/lib6/b/y;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/google/g/a/d/g;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/g/a/d/g;

    new-instance v1, Lcom/google/maps/api/android/lib6/b/a;

    new-instance v2, Lcom/google/g/a/c/d;

    invoke-direct {v2}, Lcom/google/g/a/c/d;-><init>()V

    invoke-direct {v1, v2}, Lcom/google/maps/api/android/lib6/b/a;-><init>(Lcom/google/g/a/c/f;)V

    invoke-direct {v0, v1}, Lcom/google/g/a/d/g;-><init>(Lcom/google/g/a/c/f;)V

    sput-object v0, Lcom/google/maps/api/android/lib6/b/y;->a:Lcom/google/g/a/d/g;

    return-void
.end method

.method public static synthetic a()Lcom/google/g/a/d/g;
    .locals 1

    sget-object v0, Lcom/google/maps/api/android/lib6/b/y;->a:Lcom/google/g/a/d/g;

    return-object v0
.end method
