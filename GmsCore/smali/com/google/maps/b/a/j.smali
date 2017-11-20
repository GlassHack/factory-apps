.class public final Lcom/google/maps/b/a/j;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/google/g/a/b/b/h;

.field private static b:Lcom/google/g/a/b/b/h;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/google/g/a/b/b/h;

    invoke-direct {v0}, Lcom/google/g/a/b/b/h;-><init>()V

    sput-object v0, Lcom/google/maps/b/a/j;->a:Lcom/google/g/a/b/b/h;

    new-instance v0, Lcom/google/g/a/b/b/h;

    invoke-direct {v0}, Lcom/google/g/a/b/b/h;-><init>()V

    sput-object v0, Lcom/google/maps/b/a/j;->b:Lcom/google/g/a/b/b/h;

    sget-object v0, Lcom/google/maps/b/a/j;->a:Lcom/google/g/a/b/b/h;

    const/16 v1, 0x11e

    invoke-virtual {v0, v1, v4, v3}, Lcom/google/g/a/b/b/h;->a(IILjava/lang/Object;)Lcom/google/g/a/b/b/h;

    move-result-object v0

    const/16 v1, 0x41b

    sget-object v2, Lcom/google/maps/b/a/j;->b:Lcom/google/g/a/b/b/h;

    invoke-virtual {v0, v1, v5, v2}, Lcom/google/g/a/b/b/h;->a(IILjava/lang/Object;)Lcom/google/g/a/b/b/h;

    sget-object v0, Lcom/google/maps/b/a/j;->b:Lcom/google/g/a/b/b/h;

    const/16 v1, 0x124

    invoke-virtual {v0, v1, v4, v3}, Lcom/google/g/a/b/b/h;->a(IILjava/lang/Object;)Lcom/google/g/a/b/b/h;

    move-result-object v0

    const/16 v1, 0x224

    invoke-virtual {v0, v1, v5, v3}, Lcom/google/g/a/b/b/h;->a(IILjava/lang/Object;)Lcom/google/g/a/b/b/h;

    return-void
.end method
