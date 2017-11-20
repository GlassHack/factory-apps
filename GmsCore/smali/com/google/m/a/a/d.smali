.class public final Lcom/google/m/a/a/d;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/google/g/a/b/b/h;

.field public static final b:Lcom/google/g/a/b/b/h;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x0

    const/16 v2, 0x224

    const/4 v3, 0x1

    new-instance v0, Lcom/google/g/a/b/b/h;

    invoke-direct {v0}, Lcom/google/g/a/b/b/h;-><init>()V

    sput-object v0, Lcom/google/m/a/a/d;->a:Lcom/google/g/a/b/b/h;

    new-instance v0, Lcom/google/g/a/b/b/h;

    invoke-direct {v0}, Lcom/google/g/a/b/b/h;-><init>()V

    sput-object v0, Lcom/google/m/a/a/d;->b:Lcom/google/g/a/b/b/h;

    sget-object v0, Lcom/google/m/a/a/d;->a:Lcom/google/g/a/b/b/h;

    invoke-virtual {v0, v2, v3, v4}, Lcom/google/g/a/b/b/h;->a(IILjava/lang/Object;)Lcom/google/g/a/b/b/h;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v2, v1, v4}, Lcom/google/g/a/b/b/h;->a(IILjava/lang/Object;)Lcom/google/g/a/b/b/h;

    sget-object v0, Lcom/google/m/a/a/d;->b:Lcom/google/g/a/b/b/h;

    const/16 v1, 0x21b

    sget-object v2, Lcom/google/m/a/a/d;->a:Lcom/google/g/a/b/b/h;

    invoke-virtual {v0, v1, v3, v2}, Lcom/google/g/a/b/b/h;->a(IILjava/lang/Object;)Lcom/google/g/a/b/b/h;

    return-void
.end method
