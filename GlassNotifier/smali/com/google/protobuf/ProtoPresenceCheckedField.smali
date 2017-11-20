.class public interface abstract annotation Lcom/google/protobuf/ProtoPresenceCheckedField;
.super Ljava/lang/Object;
.source "ProtoPresenceCheckedField.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->CLASS:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->FIELD:Ljava/lang/annotation/ElementType;
    }
.end annotation


# virtual methods
.method public abstract mask()I
.end method

.method public abstract presenceBitsId()I
.end method
