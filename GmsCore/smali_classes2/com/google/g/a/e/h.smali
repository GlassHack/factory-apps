.class public final Lcom/google/g/a/e/h;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/google/g/a/e/j;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 69
    new-instance v0, Lcom/google/g/a/e/i;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/g/a/e/i;-><init>(B)V

    sput-object v0, Lcom/google/g/a/e/h;->a:Lcom/google/g/a/e/j;

    .line 70
    return-void
.end method

.method public static a(I)Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 102
    sget-object v0, Lcom/google/g/a/e/h;->a:Lcom/google/g/a/e/j;

    invoke-virtual {v0, p0}, Lcom/google/g/a/e/j;->a(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public static a(J)Ljava/lang/Long;
    .locals 2

    .prologue
    .line 95
    sget-object v0, Lcom/google/g/a/e/h;->a:Lcom/google/g/a/e/j;

    invoke-virtual {v0, p0, p1}, Lcom/google/g/a/e/j;->a(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method
