.class Lcom/google/common/reflect/a;
.super Ljava/lang/reflect/AccessibleObject;
.source "SourceFile"

# interfaces
.implements Ljava/lang/reflect/Member;


# instance fields
.field private final a:Ljava/lang/reflect/AccessibleObject;

.field private final b:Ljava/lang/reflect/Member;


# direct methods
.method constructor <init>(Ljava/lang/reflect/AccessibleObject;)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/reflect/AccessibleObject;-><init>()V

    .line 43
    invoke-static {p1}, Lcom/google/common/base/ai;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    iput-object p1, p0, Lcom/google/common/reflect/a;->a:Ljava/lang/reflect/AccessibleObject;

    .line 45
    check-cast p1, Ljava/lang/reflect/Member;

    iput-object p1, p0, Lcom/google/common/reflect/a;->b:Ljava/lang/reflect/Member;

    .line 46
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 157
    instance-of v0, p1, Lcom/google/common/reflect/a;

    if-eqz v0, :cond_0

    .line 158
    check-cast p1, Lcom/google/common/reflect/a;

    .line 159
    iget-object v0, p0, Lcom/google/common/reflect/a;->b:Ljava/lang/reflect/Member;

    iget-object v1, p1, Lcom/google/common/reflect/a;->b:Ljava/lang/reflect/Member;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 161
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/common/reflect/a;->a:Ljava/lang/reflect/AccessibleObject;

    invoke-virtual {v0, p1}, Ljava/lang/reflect/AccessibleObject;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    return-object v0
.end method

.method public final getAnnotations()[Ljava/lang/annotation/Annotation;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/common/reflect/a;->a:Ljava/lang/reflect/AccessibleObject;

    invoke-virtual {v0}, Ljava/lang/reflect/AccessibleObject;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v0

    return-object v0
.end method

.method public final getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/common/reflect/a;->a:Ljava/lang/reflect/AccessibleObject;

    invoke-virtual {v0}, Ljava/lang/reflect/AccessibleObject;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v0

    return-object v0
.end method

.method public getDeclaringClass()Ljava/lang/Class;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/google/common/reflect/a;->b:Ljava/lang/reflect/Member;

    invoke-interface {v0}, Ljava/lang/reflect/Member;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public final getModifiers()I
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/google/common/reflect/a;->b:Ljava/lang/reflect/Member;

    invoke-interface {v0}, Ljava/lang/reflect/Member;->getModifiers()I

    move-result v0

    return v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/google/common/reflect/a;->b:Ljava/lang/reflect/Member;

    invoke-interface {v0}, Ljava/lang/reflect/Member;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/google/common/reflect/a;->b:Ljava/lang/reflect/Member;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final isAccessible()Z
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/google/common/reflect/a;->a:Ljava/lang/reflect/AccessibleObject;

    invoke-virtual {v0}, Ljava/lang/reflect/AccessibleObject;->isAccessible()Z

    move-result v0

    return v0
.end method

.method public final isAnnotationPresent(Ljava/lang/Class;)Z
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/common/reflect/a;->a:Ljava/lang/reflect/AccessibleObject;

    invoke-virtual {v0, p1}, Ljava/lang/reflect/AccessibleObject;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public final isSynthetic()Z
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/google/common/reflect/a;->b:Ljava/lang/reflect/Member;

    invoke-interface {v0}, Ljava/lang/reflect/Member;->isSynthetic()Z

    move-result v0

    return v0
.end method

.method public final setAccessible(Z)V
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/common/reflect/a;->a:Ljava/lang/reflect/AccessibleObject;

    invoke-virtual {v0, p1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 71
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/google/common/reflect/a;->b:Ljava/lang/reflect/Member;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
