.class Lcom/google/glass/widget/SmoothRotatingTextView$Text;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final NO_IMAGE:I = -0x1


# instance fields
.field private final leftImageId:I

.field private final text:Ljava/lang/CharSequence;

.field private final textStyle:I


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;I)V
    .locals 1

    .prologue
    .line 224
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/google/glass/widget/SmoothRotatingTextView$Text;-><init>(Ljava/lang/CharSequence;II)V

    .line 225
    return-void
.end method

.method private constructor <init>(Ljava/lang/CharSequence;II)V
    .locals 0

    .prologue
    .line 213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 214
    iput-object p1, p0, Lcom/google/glass/widget/SmoothRotatingTextView$Text;->text:Ljava/lang/CharSequence;

    .line 215
    iput p2, p0, Lcom/google/glass/widget/SmoothRotatingTextView$Text;->textStyle:I

    .line 216
    iput p3, p0, Lcom/google/glass/widget/SmoothRotatingTextView$Text;->leftImageId:I

    .line 217
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/CharSequence;IILcom/google/glass/widget/SmoothRotatingTextView$1;)V
    .locals 0

    .prologue
    .line 202
    invoke-direct {p0, p1, p2, p3}, Lcom/google/glass/widget/SmoothRotatingTextView$Text;-><init>(Ljava/lang/CharSequence;II)V

    return-void
.end method

.method static synthetic access$100(Lcom/google/glass/widget/SmoothRotatingTextView$Text;)Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/google/glass/widget/SmoothRotatingTextView$Text;->text:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/google/glass/widget/SmoothRotatingTextView$Text;)I
    .locals 1

    .prologue
    .line 202
    iget v0, p0, Lcom/google/glass/widget/SmoothRotatingTextView$Text;->textStyle:I

    return v0
.end method

.method static synthetic access$1100(Lcom/google/glass/widget/SmoothRotatingTextView$Text;)I
    .locals 1

    .prologue
    .line 202
    iget v0, p0, Lcom/google/glass/widget/SmoothRotatingTextView$Text;->leftImageId:I

    return v0
.end method
