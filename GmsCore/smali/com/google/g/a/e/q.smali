.class public final Lcom/google/g/a/e/q;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/google/g/a/e/s;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/g/a/e/r;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/g/a/e/r;-><init>(B)V

    sput-object v0, Lcom/google/g/a/e/q;->a:Lcom/google/g/a/e/s;

    return-void
.end method

.method public static a(I)Ljava/lang/Integer;
    .locals 1

    sget-object v0, Lcom/google/g/a/e/q;->a:Lcom/google/g/a/e/s;

    invoke-virtual {v0, p0}, Lcom/google/g/a/e/s;->a(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public static a(J)Ljava/lang/Long;
    .locals 2

    sget-object v0, Lcom/google/g/a/e/q;->a:Lcom/google/g/a/e/s;

    invoke-virtual {v0, p0, p1}, Lcom/google/g/a/e/s;->a(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method
