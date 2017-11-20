.class Lcom/google/common/reflect/d;
.super Lcom/google/common/reflect/b;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/reflect/Method;


# direct methods
.method constructor <init>(Ljava/lang/reflect/Method;)V
    .locals 0

    .prologue
    .line 193
    invoke-direct {p0, p1}, Lcom/google/common/reflect/b;-><init>(Ljava/lang/reflect/AccessibleObject;)V

    .line 194
    iput-object p1, p0, Lcom/google/common/reflect/d;->a:Ljava/lang/reflect/Method;

    .line 195
    return-void
.end method


# virtual methods
.method public final getTypeParameters()[Ljava/lang/reflect/TypeVariable;
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/google/common/reflect/d;->a:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v0

    return-object v0
.end method
