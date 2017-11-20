.class public abstract Lcom/google/c/a/df;
.super Ljava/lang/Object;


# static fields
.field private static final a:Lcom/google/c/a/df;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/c/a/dg;

    invoke-direct {v0}, Lcom/google/c/a/dg;-><init>()V

    sput-object v0, Lcom/google/c/a/df;->a:Lcom/google/c/a/df;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b()Lcom/google/c/a/df;
    .locals 1

    sget-object v0, Lcom/google/c/a/df;->a:Lcom/google/c/a/df;

    return-object v0
.end method


# virtual methods
.method public abstract a()J
.end method
