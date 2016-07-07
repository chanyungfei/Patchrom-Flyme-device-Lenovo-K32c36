.class public Landroid/widget/CheckedTextView;
.super Landroid/widget/TextView;
.source "CheckedTextView.java"

# interfaces
.implements Landroid/widget/Checkable;


# static fields
.field private static final CHECKED_STATE_SET:[I


# instance fields
.field private mBasePadding:I

.field private mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

.field private mCheckMarkGravity:I

.field private mCheckMarkResource:I

.field private mCheckMarkTintList:Landroid/content/res/ColorStateList;

.field private mCheckMarkTintMode:Landroid/graphics/PorterDuff$Mode;

.field private mCheckMarkWidth:I

.field private mChecked:Z

.field private mHasCheckMarkTint:Z

.field private mHasCheckMarkTintMode:Z

.field private mNeedRequestlayout:Z

.field private mOriginalCheckMarkWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 63
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100a0

    aput v2, v0, v1

    sput-object v0, Landroid/widget/CheckedTextView;->CHECKED_STATE_SET:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 68
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/CheckedTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 72
    const v0, 0x10103c8

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/CheckedTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 76
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/CheckedTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 77
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const v8, 0x800005

    const/4 v4, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 80
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 50
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/widget/CheckedTextView;->mCheckMarkTintList:Landroid/content/res/ColorStateList;

    .line 51
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/widget/CheckedTextView;->mCheckMarkTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 52
    iput-boolean v5, p0, Landroid/widget/CheckedTextView;->mHasCheckMarkTint:Z

    .line 53
    iput-boolean v5, p0, Landroid/widget/CheckedTextView;->mHasCheckMarkTintMode:Z

    .line 58
    iput v5, p0, Landroid/widget/CheckedTextView;->mOriginalCheckMarkWidth:I

    .line 59
    iput v8, p0, Landroid/widget/CheckedTextView;->mCheckMarkGravity:I

    .line 82
    sget-object v3, Lcom/android/internal/R$styleable;->CheckedTextView:[I

    invoke-virtual {p1, p2, v3, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 86
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v3, 0x4

    invoke-virtual {v0, v3, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Landroid/widget/CheckedTextView;->mCheckMarkGravity:I

    .line 88
    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 89
    .local v2, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_0

    .line 90
    invoke-virtual {p0, v2}, Landroid/widget/CheckedTextView;->setCheckMarkDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 93
    :cond_0
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 94
    const/4 v3, -0x1

    invoke-virtual {v0, v4, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iget-object v4, p0, Landroid/widget/CheckedTextView;->mCheckMarkTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v3, v4}, Landroid/graphics/drawable/Drawable;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v3

    iput-object v3, p0, Landroid/widget/CheckedTextView;->mCheckMarkTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 96
    iput-boolean v6, p0, Landroid/widget/CheckedTextView;->mHasCheckMarkTintMode:Z

    .line 99
    :cond_1
    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 100
    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    iput-object v3, p0, Landroid/widget/CheckedTextView;->mCheckMarkTintList:Landroid/content/res/ColorStateList;

    .line 101
    iput-boolean v6, p0, Landroid/widget/CheckedTextView;->mHasCheckMarkTint:Z

    .line 107
    :cond_2
    invoke-virtual {v0, v5, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 108
    .local v1, "checked":Z
    invoke-virtual {p0, v1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 110
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 112
    invoke-direct {p0}, Landroid/widget/CheckedTextView;->applyCheckMarkTint()V

    .line 113
    return-void
.end method

.method private applyCheckMarkTint()V
    .locals 2

    .prologue
    .line 274
    iget-object v0, p0, Landroid/widget/CheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Landroid/widget/CheckedTextView;->mHasCheckMarkTint:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/CheckedTextView;->mHasCheckMarkTintMode:Z

    if-eqz v0, :cond_3

    .line 275
    :cond_0
    iget-object v0, p0, Landroid/widget/CheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/CheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    .line 277
    iget-boolean v0, p0, Landroid/widget/CheckedTextView;->mHasCheckMarkTint:Z

    if-eqz v0, :cond_1

    .line 278
    iget-object v0, p0, Landroid/widget/CheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/widget/CheckedTextView;->mCheckMarkTintList:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 281
    :cond_1
    iget-boolean v0, p0, Landroid/widget/CheckedTextView;->mHasCheckMarkTintMode:Z

    if-eqz v0, :cond_2

    .line 282
    iget-object v0, p0, Landroid/widget/CheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/widget/CheckedTextView;->mCheckMarkTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 287
    :cond_2
    iget-object v0, p0, Landroid/widget/CheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 288
    iget-object v0, p0, Landroid/widget/CheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/widget/CheckedTextView;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 291
    :cond_3
    return-void
.end method

.method private isCheckMarkAtStart()Z
    .locals 4

    .prologue
    .line 372
    iget v2, p0, Landroid/widget/CheckedTextView;->mCheckMarkGravity:I

    invoke-virtual {p0}, Landroid/widget/CheckedTextView;->getLayoutDirection()I

    move-result v3

    invoke-static {v2, v3}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v0

    .line 373
    .local v0, "gravity":I
    and-int/lit8 v1, v0, 0x7

    .line 374
    .local v1, "hgrav":I
    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private setBasePadding(Z)V
    .locals 1
    .param p1, "checkmarkAtStart"    # Z

    .prologue
    .line 364
    if-eqz p1, :cond_0

    .line 365
    iget v0, p0, Landroid/widget/CheckedTextView;->mPaddingLeft:I

    iput v0, p0, Landroid/widget/CheckedTextView;->mBasePadding:I

    .line 369
    :goto_0
    return-void

    .line 367
    :cond_0
    iget v0, p0, Landroid/widget/CheckedTextView;->mPaddingRight:I

    iput v0, p0, Landroid/widget/CheckedTextView;->mBasePadding:I

    goto :goto_0
.end method

.method private updatePadding()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 347
    invoke-virtual {p0}, Landroid/widget/CheckedTextView;->resetPaddingToInitialValues()V

    .line 348
    iget-object v3, p0, Landroid/widget/CheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_1

    iget v3, p0, Landroid/widget/CheckedTextView;->mCheckMarkWidth:I

    iget v4, p0, Landroid/widget/CheckedTextView;->mBasePadding:I

    add-int v0, v3, v4

    .line 350
    .local v0, "newPadding":I
    :goto_0
    invoke-direct {p0}, Landroid/widget/CheckedTextView;->isCheckMarkAtStart()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 351
    iget-boolean v3, p0, Landroid/widget/CheckedTextView;->mNeedRequestlayout:Z

    iget v4, p0, Landroid/widget/CheckedTextView;->mPaddingLeft:I

    if-eq v4, v0, :cond_2

    :goto_1
    or-int/2addr v1, v3

    iput-boolean v1, p0, Landroid/widget/CheckedTextView;->mNeedRequestlayout:Z

    .line 352
    iput v0, p0, Landroid/widget/CheckedTextView;->mPaddingLeft:I

    .line 357
    :goto_2
    iget-boolean v1, p0, Landroid/widget/CheckedTextView;->mNeedRequestlayout:Z

    if-eqz v1, :cond_0

    .line 358
    invoke-virtual {p0}, Landroid/widget/CheckedTextView;->requestLayout()V

    .line 359
    iput-boolean v2, p0, Landroid/widget/CheckedTextView;->mNeedRequestlayout:Z

    .line 361
    :cond_0
    return-void

    .line 348
    .end local v0    # "newPadding":I
    :cond_1
    iget v0, p0, Landroid/widget/CheckedTextView;->mBasePadding:I

    goto :goto_0

    .restart local v0    # "newPadding":I
    :cond_2
    move v1, v2

    .line 351
    goto :goto_1

    .line 354
    :cond_3
    iget-boolean v3, p0, Landroid/widget/CheckedTextView;->mNeedRequestlayout:Z

    iget v4, p0, Landroid/widget/CheckedTextView;->mPaddingRight:I

    if-eq v4, v0, :cond_4

    :goto_3
    or-int/2addr v1, v3

    iput-boolean v1, p0, Landroid/widget/CheckedTextView;->mNeedRequestlayout:Z

    .line 355
    iput v0, p0, Landroid/widget/CheckedTextView;->mPaddingRight:I

    goto :goto_2

    :cond_4
    move v1, v2

    .line 354
    goto :goto_3
.end method


# virtual methods
.method public drawableHotspotChanged(FF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 457
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->drawableHotspotChanged(FF)V

    .line 459
    iget-object v0, p0, Landroid/widget/CheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 460
    iget-object v0, p0, Landroid/widget/CheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 462
    :cond_0
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 443
    invoke-super {p0}, Landroid/widget/TextView;->drawableStateChanged()V

    .line 445
    iget-object v1, p0, Landroid/widget/CheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 446
    invoke-virtual {p0}, Landroid/widget/CheckedTextView;->getDrawableState()[I

    move-result-object v0

    .line 449
    .local v0, "myDrawableState":[I
    iget-object v1, p0, Landroid/widget/CheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 451
    invoke-virtual {p0}, Landroid/widget/CheckedTextView;->invalidate()V

    .line 453
    .end local v0    # "myDrawableState":[I
    :cond_0
    return-void
.end method

.method public getCheckMarkDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 328
    iget-object v0, p0, Landroid/widget/CheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getCheckMarkTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Landroid/widget/CheckedTextView;->mCheckMarkTintList:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getCheckMarkTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Landroid/widget/CheckedTextView;->mCheckMarkTintMode:Landroid/graphics/PorterDuff$Mode;

    return-object v0
.end method

.method protected internalSetPadding(IIII)V
    .locals 1
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 336
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->internalSetPadding(IIII)V

    .line 337
    invoke-direct {p0}, Landroid/widget/CheckedTextView;->isCheckMarkAtStart()Z

    move-result v0

    invoke-direct {p0, v0}, Landroid/widget/CheckedTextView;->setBasePadding(Z)V

    .line 338
    return-void
.end method

.method public isChecked()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 121
    iget-boolean v0, p0, Landroid/widget/CheckedTextView;->mChecked:Z

    return v0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    .prologue
    .line 305
    invoke-super {p0}, Landroid/widget/TextView;->jumpDrawablesToCurrentState()V

    .line 307
    iget-object v0, p0, Landroid/widget/CheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 308
    iget-object v0, p0, Landroid/widget/CheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 310
    :cond_0
    return-void
.end method

.method protected onCreateDrawableState(I)[I
    .locals 2
    .param p1, "extraSpace"    # I

    .prologue
    .line 434
    add-int/lit8 v1, p1, 0x1

    invoke-super {p0, v1}, Landroid/widget/TextView;->onCreateDrawableState(I)[I

    move-result-object v0

    .line 435
    .local v0, "drawableState":[I
    invoke-virtual {p0}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 436
    sget-object v1, Landroid/widget/CheckedTextView;->CHECKED_STATE_SET:[I

    invoke-static {v0, v1}, Landroid/widget/CheckedTextView;->mergeDrawableStates([I[I)[I

    .line 438
    :cond_0
    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 14
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 379
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 381
    iget-object v3, p0, Landroid/widget/CheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    .line 382
    .local v3, "checkMarkDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_0

    .line 383
    invoke-virtual {p0}, Landroid/widget/CheckedTextView;->getGravity()I

    move-result v12

    and-int/lit8 v8, v12, 0x70

    .line 384
    .local v8, "verticalGravity":I
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    .line 386
    .local v4, "height":I
    const/4 v11, 0x0

    .line 388
    .local v11, "y":I
    sparse-switch v8, :sswitch_data_0

    .line 397
    :goto_0
    invoke-direct {p0}, Landroid/widget/CheckedTextView;->isCheckMarkAtStart()Z

    move-result v2

    .line 398
    .local v2, "checkMarkAtStart":Z
    invoke-virtual {p0}, Landroid/widget/CheckedTextView;->getWidth()I

    move-result v9

    .line 399
    .local v9, "width":I
    move v7, v11

    .line 400
    .local v7, "top":I
    add-int v1, v7, v4

    .line 403
    .local v1, "bottom":I
    if-eqz v2, :cond_2

    .line 404
    iget v5, p0, Landroid/widget/CheckedTextView;->mBasePadding:I

    .line 406
    .local v5, "left":I
    iget-object v12, p0, Landroid/widget/CheckedTextView;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->isRomUI_v3()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 408
    iget-object v12, p0, Landroid/widget/CheckedTextView;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x9080046

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    .line 409
    .local v10, "widthWithCheckMarkAndExtraPadding":I
    iget v12, p0, Landroid/widget/CheckedTextView;->mCheckMarkWidth:I

    add-int/2addr v12, v5

    iget v13, p0, Landroid/widget/CheckedTextView;->mOriginalCheckMarkWidth:I

    sub-int v13, v10, v13

    sub-int v6, v12, v13

    .line 418
    .end local v10    # "widthWithCheckMarkAndExtraPadding":I
    .local v6, "right":I
    :goto_1
    invoke-virtual {p0}, Landroid/widget/CheckedTextView;->isLayoutRtl()Z

    move-result v12

    if-eqz v12, :cond_3

    .line 419
    iget v12, p0, Landroid/widget/CheckedTextView;->mScrollX:I

    add-int/2addr v12, v5

    iget v13, p0, Landroid/widget/CheckedTextView;->mScrollX:I

    add-int/2addr v13, v6

    invoke-virtual {v3, v12, v7, v13, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 423
    :goto_2
    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 425
    invoke-virtual {p0}, Landroid/widget/CheckedTextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 426
    .local v0, "background":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 427
    iget v12, p0, Landroid/widget/CheckedTextView;->mScrollX:I

    add-int/2addr v12, v5

    iget v13, p0, Landroid/widget/CheckedTextView;->mScrollX:I

    add-int/2addr v13, v6

    invoke-virtual {v0, v12, v7, v13, v1}, Landroid/graphics/drawable/Drawable;->setHotspotBounds(IIII)V

    .line 430
    .end local v0    # "background":Landroid/graphics/drawable/Drawable;
    .end local v1    # "bottom":I
    .end local v2    # "checkMarkAtStart":Z
    .end local v4    # "height":I
    .end local v5    # "left":I
    .end local v6    # "right":I
    .end local v7    # "top":I
    .end local v8    # "verticalGravity":I
    .end local v9    # "width":I
    .end local v11    # "y":I
    :cond_0
    return-void

    .line 390
    .restart local v4    # "height":I
    .restart local v8    # "verticalGravity":I
    .restart local v11    # "y":I
    :sswitch_0
    invoke-virtual {p0}, Landroid/widget/CheckedTextView;->getHeight()I

    move-result v12

    sub-int v11, v12, v4

    .line 391
    goto :goto_0

    .line 393
    :sswitch_1
    invoke-virtual {p0}, Landroid/widget/CheckedTextView;->getHeight()I

    move-result v12

    sub-int/2addr v12, v4

    div-int/lit8 v11, v12, 0x2

    goto :goto_0

    .line 411
    .restart local v1    # "bottom":I
    .restart local v2    # "checkMarkAtStart":Z
    .restart local v5    # "left":I
    .restart local v7    # "top":I
    .restart local v9    # "width":I
    :cond_1
    iget v12, p0, Landroid/widget/CheckedTextView;->mCheckMarkWidth:I

    add-int v6, v5, v12

    .restart local v6    # "right":I
    goto :goto_1

    .line 415
    .end local v5    # "left":I
    .end local v6    # "right":I
    :cond_2
    iget v12, p0, Landroid/widget/CheckedTextView;->mBasePadding:I

    sub-int v6, v9, v12

    .line 416
    .restart local v6    # "right":I
    iget v12, p0, Landroid/widget/CheckedTextView;->mCheckMarkWidth:I

    sub-int v5, v6, v12

    .restart local v5    # "left":I
    goto :goto_1

    .line 421
    :cond_3
    invoke-virtual {v3, v5, v7, v6, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_2

    .line 388
    nop

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_1
        0x50 -> :sswitch_0
    .end sparse-switch
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 466
    invoke-super {p0, p1}, Landroid/widget/TextView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 467
    const-class v0, Landroid/widget/CheckedTextView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 468
    iget-boolean v0, p0, Landroid/widget/CheckedTextView;->mChecked:Z

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setChecked(Z)V

    .line 469
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 473
    invoke-super {p0, p1}, Landroid/widget/TextView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 474
    const-class v0, Landroid/widget/CheckedTextView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 475
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCheckable(Z)V

    .line 476
    iget-boolean v0, p0, Landroid/widget/CheckedTextView;->mChecked:Z

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setChecked(Z)V

    .line 477
    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 0
    .param p1, "layoutDirection"    # I

    .prologue
    .line 342
    invoke-super {p0, p1}, Landroid/widget/TextView;->onRtlPropertiesChanged(I)V

    .line 343
    invoke-direct {p0}, Landroid/widget/CheckedTextView;->updatePadding()V

    .line 344
    return-void
.end method

.method public setCheckMarkDrawable(I)V
    .locals 3
    .param p1, "resid"    # I

    .prologue
    .line 151
    if-eqz p1, :cond_0

    iget v1, p0, Landroid/widget/CheckedTextView;->mCheckMarkResource:I

    if-ne p1, v1, :cond_0

    .line 162
    :goto_0
    return-void

    .line 155
    :cond_0
    iput p1, p0, Landroid/widget/CheckedTextView;->mCheckMarkResource:I

    .line 157
    const/4 v0, 0x0

    .line 158
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    iget v1, p0, Landroid/widget/CheckedTextView;->mCheckMarkResource:I

    if-eqz v1, :cond_1

    .line 159
    invoke-virtual {p0}, Landroid/widget/CheckedTextView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Landroid/widget/CheckedTextView;->mCheckMarkResource:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 161
    :cond_1
    invoke-virtual {p0, v0}, Landroid/widget/CheckedTextView;->setCheckMarkDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setCheckMarkDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 5
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 175
    iget-object v1, p0, Landroid/widget/CheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 176
    iget-object v1, p0, Landroid/widget/CheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 177
    iget-object v1, p0, Landroid/widget/CheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1}, Landroid/widget/CheckedTextView;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 179
    :cond_0
    iget-object v1, p0, Landroid/widget/CheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    if-eq p1, v1, :cond_2

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Landroid/widget/CheckedTextView;->mNeedRequestlayout:Z

    .line 180
    if-eqz p1, :cond_4

    .line 181
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 182
    invoke-virtual {p0}, Landroid/widget/CheckedTextView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_3

    :goto_1
    invoke-virtual {p1, v2, v3}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 183
    sget-object v1, Landroid/widget/CheckedTextView;->CHECKED_STATE_SET:[I

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 184
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/widget/CheckedTextView;->setMinHeight(I)V

    .line 186
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iput v1, p0, Landroid/widget/CheckedTextView;->mCheckMarkWidth:I

    .line 188
    iget-object v1, p0, Landroid/widget/CheckedTextView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->isRomUI_v3()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Landroid/widget/CheckedTextView;->isCheckMarkAtStart()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 190
    iget-object v1, p0, Landroid/widget/CheckedTextView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x9080046

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 191
    .local v0, "widthWithCheckMarkAndExtraPadding":I
    iget v1, p0, Landroid/widget/CheckedTextView;->mCheckMarkWidth:I

    iput v1, p0, Landroid/widget/CheckedTextView;->mOriginalCheckMarkWidth:I

    .line 192
    iget v1, p0, Landroid/widget/CheckedTextView;->mCheckMarkWidth:I

    iget v2, p0, Landroid/widget/CheckedTextView;->mCheckMarkWidth:I

    sub-int v2, v0, v2

    add-int/2addr v1, v2

    iput v1, p0, Landroid/widget/CheckedTextView;->mCheckMarkWidth:I

    .line 195
    .end local v0    # "widthWithCheckMarkAndExtraPadding":I
    :cond_1
    invoke-virtual {p0}, Landroid/widget/CheckedTextView;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 196
    invoke-direct {p0}, Landroid/widget/CheckedTextView;->applyCheckMarkTint()V

    .line 200
    :goto_2
    iput-object p1, p0, Landroid/widget/CheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    .line 204
    invoke-virtual {p0}, Landroid/widget/CheckedTextView;->resolvePadding()V

    .line 205
    return-void

    :cond_2
    move v1, v3

    .line 179
    goto :goto_0

    :cond_3
    move v2, v3

    .line 182
    goto :goto_1

    .line 198
    :cond_4
    iput v3, p0, Landroid/widget/CheckedTextView;->mCheckMarkWidth:I

    goto :goto_2
.end method

.method public setCheckMarkTintList(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "tint"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 223
    iput-object p1, p0, Landroid/widget/CheckedTextView;->mCheckMarkTintList:Landroid/content/res/ColorStateList;

    .line 224
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/CheckedTextView;->mHasCheckMarkTint:Z

    .line 226
    invoke-direct {p0}, Landroid/widget/CheckedTextView;->applyCheckMarkTint()V

    .line 227
    return-void
.end method

.method public setCheckMarkTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1
    .param p1, "tintMode"    # Landroid/graphics/PorterDuff$Mode;

    .prologue
    .line 253
    iput-object p1, p0, Landroid/widget/CheckedTextView;->mCheckMarkTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 254
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/CheckedTextView;->mHasCheckMarkTintMode:Z

    .line 256
    invoke-direct {p0}, Landroid/widget/CheckedTextView;->applyCheckMarkTint()V

    .line 257
    return-void
.end method

.method public setChecked(Z)V
    .locals 1
    .param p1, "checked"    # Z

    .prologue
    .line 130
    iget-boolean v0, p0, Landroid/widget/CheckedTextView;->mChecked:Z

    if-eq v0, p1, :cond_0

    .line 131
    iput-boolean p1, p0, Landroid/widget/CheckedTextView;->mChecked:Z

    .line 132
    invoke-virtual {p0}, Landroid/widget/CheckedTextView;->refreshDrawableState()V

    .line 133
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/CheckedTextView;->notifyViewAccessibilityStateChangedIfNeeded(I)V

    .line 136
    :cond_0
    return-void
.end method

.method public setVisibility(I)V
    .locals 3
    .param p1, "visibility"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 296
    invoke-super {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 298
    iget-object v0, p0, Landroid/widget/CheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 299
    iget-object v2, p0, Landroid/widget/CheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    if-nez p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 301
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 299
    goto :goto_0
.end method

.method public toggle()V
    .locals 1

    .prologue
    .line 116
    iget-boolean v0, p0, Landroid/widget/CheckedTextView;->mChecked:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 117
    return-void

    .line 116
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 314
    iget-object v0, p0, Landroid/widget/CheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/TextView;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
