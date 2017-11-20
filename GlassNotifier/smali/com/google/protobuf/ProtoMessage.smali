.class public interface abstract annotation Lcom/google/protobuf/ProtoMessage;
.super Ljava/lang/Object;
.source "ProtoMessage.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lcom/google/protobuf/ProtoMessage;
        messageSetWireFormat = false
    .end subannotation
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->CLASS:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->TYPE:Ljava/lang/annotation/ElementType;
    }
.end annotation


# virtual methods
.method public abstract messageSetWireFormat()Z
.end method

.method public abstract protoSyntax()Lcom/google/protobuf/ProtoSyntax;
.end method
