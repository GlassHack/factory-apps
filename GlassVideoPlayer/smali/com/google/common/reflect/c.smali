.class Lcom/google/common/reflect/c;
.super Lcom/google/common/reflect/b;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/reflect/Constructor;


# direct methods
.method constructor <init>(Ljava/lang/reflect/Constructor;)V
    .locals 0

    .prologue
    .line 242
    invoke-direct {p0, p1}, Lcom/google/common/reflect/b;-><init>(Ljava/lang/reflect/AccessibleObject;)V

    .line 243
    iput-object p1, p0, Lcom/google/common/reflect/c;->a:Ljava/lang/reflect/Constructor;

    .line 244
    return-void
.end method


# virtual methods
.method public final getTypeParameters()[Ljava/lang/reflect/TypeVariable;
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Lcom/google/common/reflect/c;->a:Ljava/lang/reflect/Constructor;

    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v0

    return-object v0
.end method
