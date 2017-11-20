.class Lcom/google/common/collect/ImmutableEnumSet$EnumSerializedForm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final delegate:Ljava/util/EnumSet;


# direct methods
.method constructor <init>(Ljava/util/EnumSet;)V
    .locals 0

    .prologue
    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    iput-object p1, p0, Lcom/google/common/collect/ImmutableEnumSet$EnumSerializedForm;->delegate:Ljava/util/EnumSet;

    .line 131
    return-void
.end method


# virtual methods
.method readResolve()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 135
    new-instance v0, Lcom/google/common/collect/ImmutableEnumSet;

    iget-object v1, p0, Lcom/google/common/collect/ImmutableEnumSet$EnumSerializedForm;->delegate:Ljava/util/EnumSet;

    invoke-virtual {v1}, Ljava/util/EnumSet;->clone()Ljava/util/EnumSet;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/ImmutableEnumSet;-><init>(Ljava/util/EnumSet;Lcom/google/common/collect/dk;)V

    return-object v0
.end method
