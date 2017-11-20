.class public final Lcom/google/n/c/a/a/s;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/google/g/a/b/b/h;

.field public static final b:Lcom/google/g/a/b/b/h;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x1

    new-instance v0, Lcom/google/g/a/b/b/h;

    invoke-direct {v0}, Lcom/google/g/a/b/b/h;-><init>()V

    sput-object v0, Lcom/google/n/c/a/a/s;->a:Lcom/google/g/a/b/b/h;

    new-instance v0, Lcom/google/g/a/b/b/h;

    invoke-direct {v0}, Lcom/google/g/a/b/b/h;-><init>()V

    sput-object v0, Lcom/google/n/c/a/a/s;->b:Lcom/google/g/a/b/b/h;

    sget-object v0, Lcom/google/n/c/a/a/s;->a:Lcom/google/g/a/b/b/h;

    const/16 v1, 0x224

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v4, v2}, Lcom/google/g/a/b/b/h;->a(IILjava/lang/Object;)Lcom/google/g/a/b/b/h;

    sget-object v0, Lcom/google/n/c/a/a/s;->b:Lcom/google/g/a/b/b/h;

    const/16 v1, 0x21e

    const-wide/16 v2, 0x64

    invoke-static {v2, v3}, Lcom/google/g/a/e/q;->a(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v4, v2}, Lcom/google/g/a/b/b/h;->a(IILjava/lang/Object;)Lcom/google/g/a/b/b/h;

    move-result-object v0

    const/16 v1, 0x21b

    const/4 v2, 0x2

    sget-object v3, Lcom/google/l/a/a/a/a;->a:Lcom/google/g/a/b/b/h;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/g/a/b/b/h;->a(IILjava/lang/Object;)Lcom/google/g/a/b/b/h;

    return-void
.end method
