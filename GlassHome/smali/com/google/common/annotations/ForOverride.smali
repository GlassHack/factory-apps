.class public interface abstract annotation Lcom/google/common/annotations/ForOverride;
.super Ljava/lang/Object;
.source "ForOverride.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation build Lcom/google/common/annotations/GoogleInternal;
.end annotation

.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation build Lcom/google/common/annotations/IncompatibleModifiers;
    value = {
        .enum Ljavax/lang/model/element/Modifier;->STATIC:Ljavax/lang/model/element/Modifier;,
        .enum Ljavax/lang/model/element/Modifier;->FINAL:Ljavax/lang/model/element/Modifier;
    }
.end annotation

.annotation build Lcom/google/common/annotations/RequiredModifiers;
    value = {
        .enum Ljavax/lang/model/element/Modifier;->PROTECTED:Ljavax/lang/model/element/Modifier;
    }
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->CLASS:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->METHOD:Ljava/lang/annotation/ElementType;
    }
.end annotation
