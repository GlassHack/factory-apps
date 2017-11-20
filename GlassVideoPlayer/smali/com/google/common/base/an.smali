.class final Lcom/google/common/base/an;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/base/ar;


# instance fields
.field final synthetic a:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 171
    iput-object p1, p0, Lcom/google/common/base/an;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private b(Lcom/google/common/base/ak;Ljava/lang/CharSequence;)Lcom/google/common/base/aq;
    .locals 1

    .prologue
    .line 173
    new-instance v0, Lcom/google/common/base/ao;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/common/base/ao;-><init>(Lcom/google/common/base/an;Lcom/google/common/base/ak;Ljava/lang/CharSequence;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic a(Lcom/google/common/base/ak;Ljava/lang/CharSequence;)Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 171
    invoke-direct {p0, p1, p2}, Lcom/google/common/base/an;->b(Lcom/google/common/base/ak;Ljava/lang/CharSequence;)Lcom/google/common/base/aq;

    move-result-object v0

    return-object v0
.end method
