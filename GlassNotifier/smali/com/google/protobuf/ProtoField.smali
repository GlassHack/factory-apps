.class public interface abstract annotation Lcom/google/protobuf/ProtoField;
.super Ljava/lang/Object;
.source "ProtoField.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lcom/google/protobuf/ProtoField;
        isEnforceUtf8 = true
        isLazy = false
        isRequired = false
    .end subannotation
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->CLASS:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->FIELD:Ljava/lang/annotation/ElementType;
    }
.end annotation


# virtual methods
.method public abstract fieldNumber()I
.end method

.method public abstract isEnforceUtf8()Z
.end method

.method public abstract isLazy()Z
.end method

.method public abstract isRequired()Z
.end method

.method public abstract type()Lcom/google/protobuf/FieldType;
.end method
