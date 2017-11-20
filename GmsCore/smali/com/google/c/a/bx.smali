.class public final Lcom/google/c/a/bx;
.super Lcom/google/c/a/bw;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final a:Lcom/google/c/a/bx;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/c/a/bx;

    invoke-direct {v0}, Lcom/google/c/a/bx;-><init>()V

    sput-object v0, Lcom/google/c/a/bx;->a:Lcom/google/c/a/bx;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/c/a/bw;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)I
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method protected final b(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
