.class public final Lcom/google/glass/settings/ui/details/DetailsCard$Detail;
.super Ljava/lang/Object;
.source "DetailsCard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/settings/ui/details/DetailsCard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Detail"
.end annotation


# instance fields
.field private final key:Ljava/lang/String;

.field private final value:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/google/glass/settings/ui/details/DetailsCard$Detail;->key:Ljava/lang/String;

    .line 20
    iput-object p2, p0, Lcom/google/glass/settings/ui/details/DetailsCard$Detail;->value:Ljava/lang/String;

    .line 21
    return-void
.end method


# virtual methods
.method getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/google/glass/settings/ui/details/DetailsCard$Detail;->key:Ljava/lang/String;

    return-object v0
.end method

.method getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/google/glass/settings/ui/details/DetailsCard$Detail;->value:Ljava/lang/String;

    return-object v0
.end method
