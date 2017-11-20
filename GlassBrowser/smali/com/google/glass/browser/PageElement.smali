.class public final Lcom/google/glass/browser/PageElement;
.super Ljava/lang/Object;
.source "PageElement.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/google/glass/browser/PageElement;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final VERTICAL_DELTA_THRESHOLD:I = 0x6


# instance fields
.field private final height:I

.field private final id:Ljava/lang/String;

.field private final left:I

.field private final top:I

.field private final url:Ljava/lang/String;

.field private final width:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 7
    const-class v0, Lcom/google/glass/browser/PageElement;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/browser/PageElement;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(IIIILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "url"    # Ljava/lang/String;
    .param p6, "id"    # Ljava/lang/String;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput p1, p0, Lcom/google/glass/browser/PageElement;->left:I

    .line 32
    iput p2, p0, Lcom/google/glass/browser/PageElement;->top:I

    .line 33
    iput p3, p0, Lcom/google/glass/browser/PageElement;->width:I

    .line 34
    iput p4, p0, Lcom/google/glass/browser/PageElement;->height:I

    .line 35
    iput-object p5, p0, Lcom/google/glass/browser/PageElement;->url:Ljava/lang/String;

    .line 36
    iput-object p6, p0, Lcom/google/glass/browser/PageElement;->id:Ljava/lang/String;

    .line 37
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/google/glass/browser/PageElement;)I
    .locals 3
    .param p1, "otherElement"    # Lcom/google/glass/browser/PageElement;

    .prologue
    .line 86
    iget v1, p0, Lcom/google/glass/browser/PageElement;->top:I

    invoke-virtual {p1}, Lcom/google/glass/browser/PageElement;->getTop()I

    move-result v2

    sub-int v0, v1, v2

    .line 89
    .local v0, "delta":I
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const/4 v2, 0x6

    if-ge v1, v2, :cond_0

    .line 90
    iget v1, p0, Lcom/google/glass/browser/PageElement;->left:I

    invoke-virtual {p1}, Lcom/google/glass/browser/PageElement;->getLeft()I

    move-result v2

    sub-int v0, v1, v2

    .line 92
    :cond_0
    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 6
    check-cast p1, Lcom/google/glass/browser/PageElement;

    invoke-virtual {p0, p1}, Lcom/google/glass/browser/PageElement;->compareTo(Lcom/google/glass/browser/PageElement;)I

    move-result v0

    return v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Lcom/google/glass/browser/PageElement;->height:I

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/google/glass/browser/PageElement;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getLeft()I
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lcom/google/glass/browser/PageElement;->left:I

    return v0
.end method

.method public getTop()I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcom/google/glass/browser/PageElement;->top:I

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/google/glass/browser/PageElement;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lcom/google/glass/browser/PageElement;->width:I

    return v0
.end method
